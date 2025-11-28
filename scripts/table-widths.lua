function Blocks(blocks)
  for i = #blocks - 1, 1, -1 do
    local elem = blocks[i]
    local next_elem = blocks[i+1]
    if elem.t == "Table" and next_elem.t == "Para" then
      local text = pandoc.utils.stringify(next_elem)
      -- print("Checking text: " .. text)
      -- Match {: colwidths="2.0 3.2..." }
      -- Capture everything between colwidths= and }
      local widths_str = text:match("{:%s*colwidths=(.-)}")
      
      if widths_str then
        -- print("Found widths: " .. widths_str)
        local widths = {}
        local total = 0
        for w in widths_str:gmatch("[%d%.]+") do
          local val = tonumber(w)
          if val then
            table.insert(widths, val)
            total = total + val
          end
        end
        
        -- Normalize and apply
        if total > 0 and #widths > 0 then
           local new_colspecs = {}
           -- elem.colspecs is a list of {alignment, width}
           for j, spec in ipairs(elem.colspecs) do
             local w = widths[j]
             if w then
               -- spec[1] is alignment, spec[2] is width
               -- We set width to w / total
               new_colspecs[j] = {spec[1], w / total}
             else
               new_colspecs[j] = spec
             end
           end
           elem.colspecs = new_colspecs
           blocks[i] = elem
           table.remove(blocks, i+1)
        end
      end
    end
  end
  return blocks
end
