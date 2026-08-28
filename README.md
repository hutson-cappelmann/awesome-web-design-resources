# awesome-web-design-resources

A single repo an AI web-design agent can clone and use. 30 design skills
flattened from 7 upstream repos (no nested umbrellas), each with
`PROVENANCE.md` + upstream license, plus curated resource catalogs.

```
awesome-web-design-resources/
├── skills/            # 30 skills — one folder per skill, SKILL.md at top
├── shared/            # research notes, CLI sources, distilled prompts (per-source)
├── docs/              # upstream READMEs, toolkits index, resources catalog
├── licenses/          # upstream LICENSE files, per source
├── manifest.json      # machine-readable skill → source → commit → license map
├── AGENTS.md          # how to use this repo as an agent
└── install.sh         # copy/symlink skills into Claude Code or Hermes
```

## Quick start (human)

```bash
git clone https://github.com/hutson-cappelmann/awesome-web-design-resources
cd awesome-web-design-resources
./install.sh                 # installs into ~/.hermes/skills (or: ./install.sh --claude ~/.claude/skills)
```

## Quick start (agent)

1. `git clone` this repo.
2. Read `AGENTS.md` (this is the contract), then `manifest.json`.
3. Pick a skill by `name` from the manifest; read `skills/<name>/SKILL.md`
   in full before doing the design work. The skill owns the workflow —
   follow its gates, scripts, and pitfalls.
4. Use `shared/` for research notes and script sources referenced by skills.
5. For section-level building blocks, see `docs/resources.md`
   (shadcnblocks, blocks.so, Magic UI, Aceternity, daisyUI, 21st.dev, …).
6. `docs/candidates.md` — reviewed-but-not-yet-vendored items (more
   anthropics/skills, Vercel Next.js skills, Figma MCP paths).

## The skills

| Skill | What it does | From |
|---|---|---|
| `design-taste-frontend` | **Default anti-slop skill.** Infer design language from the brief; tune variance/motion/density; GSAP skeletons; pre-flight hard rules | Leonxlnx/taste-skill |
| `frontend-design` | **Anthropic's official skill.** Pick a real aesthetic direction before coding; deliberate type pairing; no templated defaults | anthropics/claude-code ⚠ |
| `hallmark` | 21 themes, 57 slop-test gates, pre-emit self-critique; verbs: build/audit/redesign/study → `design.md` | Nutlope/hallmark |
| `ui-ux-pro-max` | Searchable local design DB: 79 styles, 192 palettes, 74 font pairings, 119 UX rules, 105 icons, 17 GSAP presets, 25 charts, 22 stacks | nextlevelbuilder/ui-ux-pro-max-skill |
| `huashu-design` | High-fidelity HTML prototypes, slides, motion, expert review; always 3 direction drafts; MP4/GIF export (Chinese-first docs) | alchaincyf/huashu-design |
| `web-design-engineer` | Top-tier design-engineer persona for browser artifacts: pages, dashboards, decks, data viz | ConardLi/garden-skills |
| `image-to-code` | Image-first: generate section references → analyze → implement to match | Leonxlnx/taste-skill |
| `redesign-existing-projects` | Audit an existing project, kill generic AI patterns, upgrade without breaking it | Leonxlnx/taste-skill |
| `gpt-taste` | Awwwards-level: AIDA structure, editorial type, bento, GSAP ScrollTrigger recipes | Leonxlnx/taste-skill |
| `minimalist-ui` | Premium utilitarian minimalism: warm mono, flat bento, muted pastels | Leonxlnx/taste-skill |
| `industrial-brutalist-ui` | Swiss print + military terminal: rigid grids, CRT/halftone (beta) | Leonxlnx/taste-skill |
| `high-end-visual-design` | Expensive soft-UI: premium fonts, whitespace, depth, smooth motion | Leonxlnx/taste-skill |
| `stitch-design-taste` | Google-Stitch-compatible semantic design rules | Leonxlnx/taste-skill |
| `design-taste-frontend-v1` | Original v1 taste skill, kept for projects pinned to its behavior | Leonxlnx/taste-skill |
| `full-output-enforcement` | Bans lazy truncation and placeholder comments; forces complete code | Leonxlnx/taste-skill |
| `brandkit` | Image-gen only: brand boards, logo systems, identity decks (no code) | Leonxlnx/taste-skill |
| `imagegen-frontend-web` | Image-gen only: one reference image per section, varied composition | Leonxlnx/taste-skill |
| `imagegen-frontend-mobile` | Image-gen only: premium mobile screen concepts in phone mockups | Leonxlnx/taste-skill |
| `design-system` | Design-system builder: slide strategy/layout/typography/color CSVs + search | nextlevelbuilder/ui-ux-pro-max-skill |
| `design` | General UI design + icon-generation and CIP (corporate identity) scripts | nextlevelbuilder/ui-ux-pro-max-skill |
| `brand` | Brand identity: logo direction, naming, voice, deliverables, token sync | nextlevelbuilder/ui-ux-pro-max-skill |
| `ui-styling` | UI styling with bundled canvas fonts for design-canvas rendering | nextlevelbuilder/ui-ux-pro-max-skill |
| `slides` | Presentation/deck design | nextlevelbuilder/ui-ux-pro-max-skill |
| `banner-design` | Marketing banner/hero design | nextlevelbuilder/ui-ux-pro-max-skill |
| `beautiful-article` | Convert source content into beautiful browser-rendered long-form articles | ConardLi/garden-skills |
| `web-video-presentation` | Narration-driven click-through web video presentations + TTS scaffolds | ConardLi/garden-skills |
| `gpt-image-2` | GPT-image-2 prompt engineering and generation workflow | ConardLi/garden-skills |
| `kb-retriever` | Knowledge-base retrieval (general purpose, not design-specific) | ConardLi/garden-skills |
| `web-artifacts-builder` | Multi-component HTML artifacts (React + Tailwind + shadcn/ui) with scaffold/bundle scripts | anthropics/skills |
| `theme-factory` | 10 preset font+color themes for slides/docs/landing pages, or generate one on the fly | anthropics/skills |

⚠ = Anthropic commercial license, see below.

## Provenance & licensing

- Every skill dir has `PROVENANCE.md`: upstream repo, path, commit, license.
- Upstream `LICENSE` files live in `licenses/<source>/`.
- This umbrella adds MIT-licensed glue (manifest, docs, install script,
  path patches). Vendored upstream content keeps its upstream license.
- **`skills/frontend-design` is vendored from `anthropics/claude-code`
  under Anthropic's Commercial Terms of Service** (© Anthropic PBC. All
  rights reserved — see `licenses/frontend-design/LICENSE.md`). It is
  included for use, with attribution; it is *not* MIT/Apache and must not
  be relicensed or redistributed outside this repo without Anthropic's
  permission.

### Path patches applied at flatten time

Upstream skills reference paths that assumed a plugin layout. To make the
flat repo runnable as-is:

- `ui-ux-pro-max`: `${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max/…`
  → `skills/ui-ux-pro-max/…` (relative to repo root; script `core.py`
  resolves its data dir from `__file__`, so it works in place).
- `design` / `brand` / `design-system` docs: `~/.claude/skills/…` and
  `.claude/skills/…` → `skills/…`.
- `brand/scripts/sync-brand-to-tokens.cjs`: hard-coded sibling path now
  resolves relative to the file itself (works in-repo and installed).

If you refresh a skill from upstream, re-apply these patches
(`grep -rn 'CLAUDE_PLUGIN_ROOT\|\.claude/skills/' skills/` to find them).

## Refreshing

```bash
# example: refresh the taste-skill pack at a new commit
cd /tmp && git clone --depth 1 https://github.com/Leonxlnx/taste-skill
# re-copy skills/* + research/scripts/examples into a staging dir, then
# flatten as in docs (one dir per SKILL.md name), re-stamp PROVENANCE.md
```

Upstream commits used for this snapshot are in `manifest.json`.

## Credits

Vendored from, in order of contribution:
[Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill),
[alchaincyf/huashu-design](https://github.com/alchaincyf/huashu-design),
[nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill),
[Nutlope/hallmark](https://github.com/Nutlope/hallmark),
[ConardLi/garden-skills](https://github.com/ConardLi/garden-skills),
[anthropics/claude-code](https://github.com/anthropics/claude-code),
[anthropics/skills](https://github.com/anthropics/skills).
Curated resource index from
[wilwaldon/Claude-Code-Frontend-Design-Toolkit](https://github.com/wilwaldon/Claude-Code-Frontend-Design-Toolkit)
(README vendored at `docs/toolkit-index-wilwaldon.md`).
