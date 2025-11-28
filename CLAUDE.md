# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a documentation repository for the Mangshi Digital Nomad Community project (芒市数字游民社区建设与运营方案). The project aims to establish Mangshi as a premier digital nomad destination in Southwest China through co-living spaces, co-working facilities, and a vibrant community ecosystem.

## Repository Structure

- **数字游民.md** - The primary planning document and single source of truth for the project. Contains the complete proposal including positioning, advantages, planning, financial projections, and implementation strategy.
- **AGENTS.md** - Repository guidelines covering documentation standards, commit conventions, content integrity, and testing procedures.
- **docs/** - Supporting documentation and analyses (create if needed)
- **assets/** - Visual materials and diagrams (create if needed)

## Development Commands

### Reading and Verification
```bash
less 数字游民.md          # Quick read/verify the current plan
git diff                   # Sanity-check edits before committing
```

### Linting and Formatting
```bash
markdownlint "**/*.md"     # Lint formatting (requires: npm install -g markdownlint-cli)
mdformat 数字游民.md       # Auto-format (optional, review diff before saving)
```

## Content Guidelines

### Language and Tone
- Primary language is **Chinese**
- Maintain professional, persuasive tone suitable for government/enterprise stakeholders
- Add English glossaries only when needed for clarity
- Preserve existing terminology (e.g., "数字游民" for digital nomad, "Co-living", "Co-working")

### Document Structure
- Use clear heading hierarchy: `#` → `##` → `###`
- Keep tables aligned and data consistent
- Use bullet lists concisely
- Descriptive section titles that explain intent (e.g., "城市活动体系" not generic labels)

### File Naming
- Lowercase, hyphenated filenames for new docs: `docs/market-analysis.md`
- Avoid spaces in filenames
- Mark drafts clearly: `docs/draft-*.md`
- Merge drafts into main document once validated

### Content Integrity
- Source all numbers and claims from verifiable references
- Note assumptions inline to aid reviewers
- Maintain consistency in currency figures and data across sections
- Mirror the voice and detail level established in 数字游民.md when adding new sections
- Prefer incremental edits over large rewrites for easier review

### Links and References
- Use relative links when referencing images or tables
- Manually spot-check all links after edits

## Git Workflow

### Commit Style
Follow Conventional Commits:
- `docs: expand coworking plan`
- `chore: lint markdown`
- `fix: correct revenue projections`

### Pull Requests
- Keep PRs focused on specific scope
- Summarize key sections touched
- Note data sources or assumptions
- Include screenshots for visual changes
- Link related tasks/issues when applicable

### Change Tracking
For substantial updates, add a brief "Change log" block at the bottom of the edited file outlining what changed and why.

## Testing Checklist

Before publishing changes:
1. Run `markdownlint` to catch heading and spacing issues
2. Manually verify all links work
3. Check table alignment and formatting
4. Ensure data consistency across sections (especially financial figures)
5. Verify currency amounts match throughout document
6. Review with `git diff` before committing