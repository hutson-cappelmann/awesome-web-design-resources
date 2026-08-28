---
name: local-service-business
description: Design skill for local trade and service business sites — barbershops, landscapers, plumbers, mechanics, salons, contractors, cleaners, small restaurants. Use when the client is a physical local business serving a town or county, whose customer is deciding whether to call. Not for SaaS landings, portfolios, agencies, or anything with a funnel. Fills the page-kind gap in design-taste-frontend (landing / portfolio / redesign / editorial).
version: 1.0.0
author: Hutson / DigiHut
license: MIT
metadata:
  hermes:
    tags: [web-design, local-business, trades, anti-slop, conversion]
    related_skills: [design-taste-frontend, hallmark, imagegen-frontend-web, full-output-enforcement]
---

# Local Service Business

The other taste skills are written for people who are browsing. This one is for
someone who has already decided they need a service and is deciding whether to
call **this** business.

That changes the job. You are not persuading anyone of a value proposition.
You are answering four questions fast and looking like a real operation while
you do it: what do you do, do you do it near me, can I trust you, what is the
number.

## 0. READ THE TRADE FIRST — this determines everything

Local businesses split into two families and the design language is different
for each. Getting this wrong is the single most common failure, and it is not
recoverable by good execution afterward.

**Visual-outcome trades** — landscaping, lawn care, painting, pressure washing,
detailing, remodeling, roofing, flooring, cleaning, salons, barbers doing
styled cuts, food.

The product *is* the visible result. Curb appeal is literally what is being
bought. These pages are **photo-led**: real work fills the screen, before and
after is the strongest asset that exists in this category, and the gallery is
structure, not decoration. A text document for one of these trades is a
category error — you are describing a thing whose whole value is being seen.

**Presence trades** — barbershops trading on a chair and a person, mechanics,
plumbers, electricians, locksmiths, HVAC, accountants, tax prep, towing.

The product is a person and reliability. A photo of a repaired pipe is worth
nothing. These are **trust-led**: who you are, how long you have done this,
where to find you, and the phone. Type, color, and one honest photo of the
place or the person carry it further than a gallery would.

Some businesses sit on the line. Decide deliberately and write the read down
before any CSS:

> Reading this as a **[visual-outcome / presence]** trade. The customer is
> deciding **[what]**. The page leads with **[what]**.

If you cannot say why the read serves what this business sells, you have not
made the read yet.

## 1. THE VISITOR

Not a browser. Someone with a problem, usually on a phone, often standing
somewhere inconvenient. Their questions, in the order they ask them:

1. Do you do the thing I need?
2. Do you do it where I am?
3. Are you real and can I trust you?
4. What is the number?

Answer 1 and 2 on the first screen. Earn 3 in the next scroll. Make 4
impossible to miss anywhere on the page.

Nothing else on the page outranks these four. A history section, a mission
statement, or a philosophy block that pushes the phone number below the fold
is a design failure regardless of how it looks.

## 2. THE ACTION IS A PHONE CALL

These businesses answer phones. They do not check a contact form, and half of
them have no email at all.

- The phone number is a `tel:` link, large, and present in the first screen and
  again at the end.
- A persistent call affordance on mobile. Thumb height.
- Text as a secondary action where the operator is a mobile number — many
  one-truck operators prefer it.
- A contact form is *worse* than a phone number here. Do not add one unless the
  client asked.
- Directions are an action too. Address as text, linked to maps. Never an
  embedded map iframe — they fail, and a gray box reads as a broken site.

## 3. TRUST SIGNALS THAT ACTUALLY WORK LOCALLY

Use the true ones you have. Never manufacture any of these.

- Years in business, stated plainly. "Since 1994" beats any adjective.
- A real street address the visitor could drive to.
- A named human. "Ask for Will" outperforms "our team of professionals."
- Real photos of real work, with captions saying where.
- License or certification number, where the trade has one.
- **Service area named specifically.** Not "the Lowcountry" — "Beaufort, Port
  Royal, Lady's Island, Fripp Island." A visitor is checking whether their
  street is included.
- Their own social presence, linked with recognizable icons. For many of these
  businesses the Facebook page IS their current web presence and their
  customers already know it.

## 4. WHAT DESTROYS TRUST LOCALLY

Each of these is instantly readable as fake to someone who lives there:

- A stock photo of people who do not work there. Fatal. Worse than no photo.
- "We are passionate about delivering excellence" — a paragraph that could
  belong to any business in any town.
- No address, no name, no evidence anyone specific exists.
- A form where a phone number should be.
- A site that looks exactly like every other site in the trade. Local customers
  have seen the template.
- Any invented fact. Hours you did not verify, prices you guessed, a service
  they may not offer.

## 5. STRUCTURE — VISUAL-OUTCOME TRADES

- Full-bleed hero of their actual finished work. Not a hero image with a
  gradient scrim and a headline floating on it — that is the template everyone
  uses. Let the work be big.
- Before and after, paired and aligned, if you have both. Nothing else converts
  like it.
- A gallery that is a real grid with rhythm. Not a carousel — people do not
  click arrows. Captions say what and where.
- Services as substance, not a row of three icon cards. What they actually do,
  in their words.
- The action, repeated at the bottom where the scroll ends.

## 6. STRUCTURE — PRESENCE TRADES

- A first screen that establishes who and where, with one true specific claim.
- One honest photo of the place or the person, if it exists. Otherwise type,
  color, and composition — and make them good rather than sparse.
- The specific detail that only this business has. Founded date, a name, a
  quirk, a location that means something locally.
- Services listed plainly. No prices unless verified.
- The action, large.

## 7. MOTION

Motion is one of the strongest signals that a human made this rather than a
generator. Absence of motion reads as unfinished.

Use it purposefully:

- Entrance reveals as work scrolls into view. Staggered, subtle, once.
- Real hover states on gallery items and actions.
- Smooth transitions on anything that changes.
- Nothing that loops forever, nothing that delays the phone number, nothing
  that moves while someone is trying to read.

Always honor `prefers-reduced-motion`.

## 8. TYPE AND COLOR

Local trades can carry more character than B2B software. A landscaper can have
a real display face; a plumber can have a strong flat color. Restraint is not
the same as blandness, and these pages fail far more often from blandness.

- Two faces. One with a voice for headings, one workhorse for everything else.
- Enough scale contrast that the hierarchy is obvious at arm's length.
- Color from the trade or their existing brand, if they have one. A logo pulled
  from their Facebook is a palette source.
- One accent that means "act."

## 9. ANTI-DEFAULTS FOR THIS CATEGORY

Every local trade template on the internet has these. Using them makes the site
invisible:

- The three-column "Our Services" row with generic line icons.
- A stock handshake, a stock hard hat, a stock smiling family.
- "Why Choose Us" with a checkmark list.
- A hero photo darkened 40% with white text centered on it.
- "Quality Work. Fair Prices. Satisfaction Guaranteed."
- A five-star row with no real reviews behind it.
- Chat bubbles, newsletter signups, cookie banners on a five-section page.

## 10. BOTH WIDTHS ARE REAL

The customer arrives on a phone. **The owner will judge it on a laptop.** Both
have to be genuinely designed — a phone layout centered in white space at
1440px is the most common way these sites look cheap, and the owner is the one
you are trying to impress.

## GATE — do not ship until every line is true

- The trade read is written down and matches what the business sells.
- A visual-outcome trade leads with real work at real size.
- The phone number is unmissable on the first screen and reachable throughout.
- The service area names actual places.
- Nothing on the page is invented.
- No stock photo of a person implied to work there.
- There is motion, and it respects `prefers-reduced-motion`.
- The desktop layout is designed, not a centered phone column.
- Nothing on the page is on the anti-defaults list.
