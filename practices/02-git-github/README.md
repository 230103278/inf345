# Practice 02 — Your first commits

**Objective:** make real commits that tell a story — the add/commit/push
loop from today's lecture, for real, on your own repo.

**Timebox:** ~25 min of actual work within today's session.

## Task

This repo starts with one file, `NOTES.md`, containing two placeholder
lines. Do the following, **as three separate commits** (not one big
commit at the end):

1. Edit `NOTES.md` — replace the "What I learned about Git today"
   placeholder with a real sentence. Commit it with a message describing
   *what* you learned, not just "update notes".
2. Edit `NOTES.md` again — replace the "A command I want to remember"
   placeholder with an actual Git command from today plus a one-line note
   on when you'd use it. Commit it separately from step 1.
3. Create a new file, `CONTRIBUTORS.md`, with your name on the first line.
   Commit it as a third, separate commit.

Then push.

## Definition of done

- [ ] At least 3 commits beyond the starting template commit
- [ ] Both placeholder lines in `NOTES.md` are replaced with real content
- [ ] `CONTRIBUTORS.md` exists and contains your name
- [ ] Pushed before the session ends (this is also your attendance signal)

## Grading

The autograder checks git history and final file content only — no build,
no execution, just three checks, out of 100 points total:

| Check | Points |
|---|---|
| At least 3 commits beyond the template | 40 |
| Both `NOTES.md` placeholders replaced | 30 |
| `CONTRIBUTORS.md` exists with your name | 30 |

It runs in seconds — see `.github/workflows/autograde.yml`.

This score is this session's grade within the **Weekly practice
sessions** category (10% of the final course grade, split evenly across
all ~14 practice sessions — see `SYLLABUS.md`), not 10% on its own.
