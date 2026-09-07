# Design principles: built for ADHD brains (and everyone else)

This course is deliberately designed around ADHD-friendly learning
principles. This isn't a side accommodation — it's a first-class design
constraint that shapes the syllabus structure, the slide format, the lab
instructions, and the automation in this repo. If a design choice conflicts
with a principle below, the principle wins by default; raise an issue if you
think an exception is warranted.

Everything here helps ADHD students specifically and tends to help everyone
else too — clearer structure and faster feedback loops are good pedagogy
regardless of how anyone's brain is wired.

## The problems we're designing against

ADHD isn't "can't pay attention" — it's an executive-function difference.
The specific failure modes we're designing around:

- **Task initiation friction**: a vague or open-ended task ("go read the
  docs and set up your environment") creates a stall before work even
  starts.
- **Working-memory overhead**: if a student has to remember where something
  is, what the plan for today is, or what they were supposed to have done
  last week, that's cognitive budget spent on logistics instead of learning.
- **Delayed feedback**: waiting days for a grade or a "did I do this right"
  answer kills momentum and reinforces avoidance.
- **Unbroken attention demands**: a 90-minute uninterrupted lecture or a
  2000-word README with no visual anchors is where attention drops off a
  cliff, not because the content is bad but because the format has no
  re-entry points.
- **Ambiguous "done" criteria**: without a concrete definition of done, a
  task can expand indefinitely and never feel finishable.

## Concrete rules this repo follows

**1. Every lecture is chunked into ~15-20 minute blocks**, each with its own
mini-objective, ending in something concrete (a working command, a small
demo, a checkpoint question) — not one long continuous narrative.

**2. Every lecture deck opens with the same three-slide skeleton**:
recap of last time → today's agenda as a visible checklist → the one-line
"why this matters" hook. Same skeleton every time, so students spend zero
working memory figuring out the shape of the session.

**3. One idea per slide.** No walls of text. Diagrams and code over prose
wherever a diagram/code can carry the point.

**4. Every lab has an explicit, checkable definition of done** stated at the
top before any instructions — a checklist or an autograder check, never
"experiment until it feels right." Open-ended exploration is still allowed,
but it's clearly labeled as a stretch/optional section, never the part
required to pass.

**5. Feedback loops are as fast as automation allows.** Autograded labs (see
main README) give a pass/fail/partial result in seconds via CI, not a
grade back "next week." This is both a pedagogy choice and an automation
requirement for this repo.

**6. Every lab starts with a copy-pasteable quickstart** (a single command or
short block that gets a student to a running state) before any explanation.
Reduces the activation-energy gap between "opened the file" and "started
doing something."

**7. Timeboxes are stated on labs**, e.g. "~20 min — if you're past 40,
stop and ask in the course channel/discussion instead of pushing through
alone." This gives students permission to stop and ask instead of silently
stalling.

**8. Deadlines and schedule live in machine-readable form**, not just prose
in a syllabus PDF — see `schedule.yml` at the repo root — so they can be
synced to a calendar/reminders automatically instead of relying on a
student remembering to check a document.

**9. Consistent repo navigation.** Every week folder has the identical
internal shape (`slides/`, `lab/`, `README.md` as the single start-here
entry point). No week reinvents its own layout.

**10. Recap-before-new, every time.** Each lecture's first content slide is
a 2-3 question recap of the previous lecture (spaced repetition), not a
cold start into new material.

**11. Low-stakes, frequent checks over rare high-stakes exams.** Weekly
autograded labs count more in aggregate than any single big exam, so one
bad day/blocked task doesn't tank the course and doesn't become a reason to
avoid engaging at all.

**12. Visual accessibility defaults**: generous whitespace, left-aligned
text (never justified), high-contrast theme with both light/dark support,
color is never the *only* signal (paired with icons/labels), and headings
are used for real document structure so screen readers and quick-scanning
both work.

These principles feed directly into tool choices elsewhere in this repo
(e.g. slide framework, autograding setup) — see the main `README.md` for
how they're implemented in practice.
