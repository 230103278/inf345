# Practice 02 — Your first commits

**Objective:** make real commits that tell a story — the add/commit/push
loop from today's lecture, for real, on your own repo.

**Timebox:** ~25 min of actual work within today's session.

> **Submission (stopgap, until our GitHub Classroom 50 org is approved):**
> fork this repo, do the task below inside your fork's
> `practices/02-git-github/` folder, then open a Pull Request back to
> `weeebdev/inf345` (`main` branch). GitHub Actions grades your PR
> automatically. **Note: your fork and PR will be public** — don't put
> anything in `NOTES.md` you wouldn't want classmates to see. Your PR
> doesn't need to (and won't) be merged — it's just how the check runs.

## Task

`NOTES.md` (in this same folder) has two placeholder lines. Do the
following, **as three separate commits** (not one big commit at the end):

1. Edit `NOTES.md` — replace the "What I learned about Git today"
   placeholder with a real sentence. Commit it with a message describing
   *what* you learned, not just "update notes".
2. Edit `NOTES.md` again — replace the "A command I want to remember"
   placeholder with an actual Git command from today plus a one-line note
   on when you'd use it. Commit it separately from step 1.
3. Create a new file, `CONTRIBUTORS.md`, with your name on the first line.
   Commit it as a third, separate commit.

Then push your fork and open the PR.

```bash
# once, at the start (from a folder that does not already contain inf345):
gh repo fork weeebdev/inf345 --clone
cd inf345/practices/02-git-github

# edit NOTES.md for step 1, then:
git add NOTES.md && git commit -m "Document what I learned about staging"

# edit NOTES.md again for step 2, then:
git add NOTES.md && git commit -m "Add a command I want to remember"

# create CONTRIBUTORS.md for step 3, then:
git add CONTRIBUTORS.md && git commit -m "Add myself to contributors"

git push
gh pr create --repo weeebdev/inf345 --title "Practice 02 — <your name>" --body "Practice 02 submission"
```

No `gh`? Fork with the **Fork** button on GitHub, clone *your* fork (not
`weeebdev/inf345`), do the three commits, push, then **Contribute → Open
pull request** and set the base repo to `weeebdev/inf345`.

## Definition of done

- [ ] At least 3 commits in your PR
- [ ] Both placeholder lines in `NOTES.md` are replaced with real content
- [ ] `CONTRIBUTORS.md` exists and contains your name
- [ ] PR opened before the session ends (this is also your attendance signal)

## Grading

The autograder checks git history and final file content only — no
build, no execution, just three checks, out of 100 points total:

| Check | Points |
|---|---|
| At least 3 commits in your PR | 40 |
| Both `NOTES.md` placeholders replaced | 30 |
| `CONTRIBUTORS.md` exists with your name | 30 |

It runs in seconds on your PR — check the **Checks** tab on your PR, or
the workflow run's **Summary** for the exact score. A bot comment with
the score appears on the PR shortly after. Workflow:
`.github/workflows/practice-02-autograde.yml`.

This score is this session's grade within the **Weekly practice
sessions** category (10% of the final course grade, split evenly across
all ~14 practice sessions — see `SYLLABUS.md`), not 10% on its own.
