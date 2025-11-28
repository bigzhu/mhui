# Repository Guidelines

Use this guide to keep the project’s documentation consistent and easy to maintain.

## Project Structure & Module Organization
- Root holds the primary plan: `数字游民.md`. Treat it as the single source of truth for the芒市数字游民社区方案.
- Add supporting write-ups under `docs/` and visuals under `assets/` (create the folders if needed). Use relative links when referencing images or tables.
- Keep drafts clearly marked (e.g., `docs/draft-*.md`) and merge them into the main document once validated.

## Build, Test, and Development Commands
- `less 数字游民.md` — quick read/verify the current plan.
- `markdownlint "**/*.md"` — lint formatting once `npm install -g markdownlint-cli` is available.
- `mdformat 数字游民.md` — optional auto-format if `mdformat` is installed; review the diff before saving.
- `git diff` — sanity-check edits before sharing (if working in a git clone).

## Coding Style & Naming Conventions
- Write in Markdown with clear `#` → `##` → `###` hierarchy; keep tables aligned and bullet lists concise.
- Preserve the document’s primary language (Chinese) and tone; add English glossaries only when needed for clarity.
- Use descriptive section titles that explain the intent (e.g., “城市活动体系” rather than generic labels).
- Prefer lowercase, hyphenated filenames for new docs (`docs/market-analysis.md`); avoid spaces.

## Testing Guidelines
- Run `markdownlint` before publishing to catch heading and spacing issues.
- Manually spot-check links, tables, and figures after edits; ensure data and currency figures remain consistent across sections.
- For substantial updates, add a brief “Change log” block at the bottom of the edited file outlining what changed and why.

## Commit & Pull Request Guidelines
- Follow a Conventional Commit style when using git (e.g., `docs: expand coworking plan` or `chore: lint markdown`).
- Keep PRs focused: summarize scope, list key sections touched, and note any data sources or assumptions.
- If visuals change, include a small screenshot or description of the new layout; link related tasks/issues when applicable.

## Content Integrity & Updates
- Source numbers and claims from verifiable references; note assumptions inline to aid reviewers.
- When adding new sections, mirror the voice and level of detail already established in `数字游民.md`.
- Prefer incremental edits over large rewrites so reviewers can track intent and impact.
