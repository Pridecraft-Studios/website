# pridecraft.gay

The landing page for Pridecraft Studios and its various projects!

## Development

### Fresh clone:

Run `npm install`.
You may use another node package manager,
although the rest of the document assumes you use npm.

### Live Testing:

To test locally with an automatically updating dev server: `npm run dev`

### Pre-commit:

- Run `npm run format && npm run lint` in your terminal
  - If any errors crop up via ESLint, fix them.
- If you added any new PNGs, run `oxipng`, or convert them to a lighter digital format.

### Pushing to GitHub:

Do not push unfinished or untested code to `main`; use a new branch if you must.
You may also want to make a new branch and pull request if you are making significant changes.

### Previewing:

Locally: `npm run dev` *or* `npm run build && npm run preview`

Remote: Check the `Deploy to Cloudflare Pages` action for a live link[^1], if it builds properly. You tested locally, right?

[^1]: If you have uploaded to preview, please allow up to a minute before it is deployed.
