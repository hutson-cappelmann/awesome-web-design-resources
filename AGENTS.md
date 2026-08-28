# AGENTS.md — how to use this repo

You (an AI agent) are being pointed at `awesome-web-design-resources`.
This file is the contract. Read it, then `manifest.json`, then pick a skill.

## How skills work here

- **One skill = one folder** under `skills/`, with `SKILL.md` at the top.
  28 skills, no nesting. A skill is *procedural knowledge*: when you load it,
  you follow its workflow, gates, and pitfalls — you do not just "read for
  inspiration".
- `PROVENANCE.md` in each skill dir tells you upstream repo, path, commit,
  license. Upstream content is vendored verbatim (minus `.git`); it is not
  tracked against upstream here.
- `shared/` holds per-source material that skills reference: research notes,
  helper scripts, CLI source, distilled prompts. Paths inside skills are
  relative to the **repo root** (e.g. `skills/ui-ux-pro-max/scripts/search.py`),
  unless the skill says otherwise.

## Choosing a skill

| You want to… | Load |
|---|---|
| Build a landing page / product site with taste (default) | `design-taste-frontend` |
| Same, but stricter Anthropic-official rules | `frontend-design` |
| Run a full slop-test audit + self-critique before shipping | `hallmark` |
| Need a design system (palette/type/layout tokens) from data | `ui-ux-pro-max` (then `design-system`) |
| Build slides, motion pieces, high-fidelity prototypes (Chinese-first docs) | `huashu-design` |
| Build any browser artifact at "stunning" bar: pages, dashboards, decks, viz | `web-design-engineer` |
| Have a screenshot/reference and must match it | `image-to-code` |
| Upgrade an existing mediocre site | `redesign-existing-projects` |
| Awwwards-level marketing page | `gpt-taste` |
| Quiet, utilitarian minimal site | `minimalist-ui` |
| Brutalist / experimental | `industrial-brutalist-ui` |
| Premium soft-UI | `high-end-visual-design` |
| Brand kit / logo / identity (image-gen, no code) | `brandkit`, `brand` |
| Deck / presentation | `slides`, `design-system` |
| Banner / hero marketing asset | `banner-design` |
| Long-form article | `beautiful-article` |
| Narrated web-video presentation | `web-video-presentation` |
| Image generation prompts (web / mobile / gpt-image-2) | `imagegen-frontend-web`, `imagegen-frontend-mobile`, `gpt-image-2` |
| Never emit truncated / placeholder code | `full-output-enforcement` (layer on top) |

Multiple skills can apply to one task. A good default combo:
`design-taste-frontend` (taste + structure) + `ui-ux-pro-max` (data-driven
tokens) + `full-output-enforcement` (completeness).

## Running skill scripts

From the **repo root** (or after `install.sh` has placed skills in your
agent's skill dir — the same relative layout is preserved):

```bash
# ui-ux-pro-max design database search
python3 skills/ui-ux-pro-max/scripts/search.py "beauty spa wellness" --domain style
python3 skills/ui-ux-pro-max/scripts/search.py "saas landing page" --design-system -p "My SaaS"

# icon generation (design skill)
python3 skills/design/scripts/icon/generate.py --prompt "settings gear" --style outlined

# brand → design tokens
node skills/brand/scripts/sync-brand-to-tokens.cjs --dry-run
```

Scripts resolve their data relative to their own location, so they work
in-repo and installed. Python 3 stdlib only (ui-ux-pro-max search); the
`brand` scripts need Node.

## Hard rules

1. **Read the whole SKILL.md before acting.** The gates (e.g. hallmark's 57
   slop-tests, taste-skill's pre-flight checks) are the point.
2. **Do not relicense.** Upstream licenses bind the vendored content.
   `skills/frontend-design` is Anthropic commercial — use it, don't
   redistribute it as open source.
3. **Do not vendor whole websites, mp3s, or screenshot galleries.** Keep the
   repo lean: skills + scripts + small references.
4. **Design first, paste second.** Before copying blocks from a resource in
   `docs/resources.md` (shadcnblocks, blocks.so, Magic UI, …), commit to a
   design language via a taste skill. Pasting unopinionated blocks is how
   sites end up with AI slop.
5. **Reserve a DESIGN.md.** At the root of any project built with these
   skills, write a `DESIGN.md` (colors, type, spacing, motion, tone) so the
   next agent session can re-derive the system without guessing.

## Layout

```
skills/<name>/SKILL.md        # the skill (one folder per skill)
skills/<name>/PROVENANCE.md   # upstream source + license
shared/<source>-*/            # research, scripts, prompts per upstream
docs/resources.md             # external block/animation/design-system catalog
docs/toolkit-index-wilwaldon.md
licenses/<source>/LICENSE     # upstream license text
manifest.json                 # machine-readable catalog
```
