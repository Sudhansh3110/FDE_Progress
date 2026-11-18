# FDE Progress — Supabase cloud sync setup

The existing app continues to run on GitHub Pages. Supabase is used only for account sign-in and encrypted-in-transit cloud storage of the three existing app sections (`progress`, `code`, `studio`). Local `localStorage` remains as a fallback and backup.

## 1. Create the progress table

1. Open your Supabase project: https://supabase.com/dashboard/project/oxwgzjhlqexwdjmvocir
2. Open **SQL Editor** → **New query**.
3. Open `SUPABASE_SETUP.sql` from this repository, paste its full contents into the SQL editor, and click **Run**.
4. In **Table Editor**, confirm that `public.fde_progress` exists. Do not add any rows manually.

The table has Row Level Security enabled. The policies allow an authenticated user to read/write only rows where `user_id = auth.uid()`. The browser receives only a publishable key; never use a secret or service-role key in the site.

## 2. Create your one private login

1. In Supabase, go to **Authentication** → **Users** → **Add user** → **Create new user** (not public sign-up).
2. Enter your email and set a strong password. Confirm the email in the dashboard if the form offers that option.
3. Use that same email and password in the site's **Settings** → **Cloud sync** form.
4. If you want to restrict this project to your one account, turn off public sign-ups in the Supabase Auth settings after creating the account. Existing password sign-in will continue to work.

The website does not show a sign-up form. Anyone can open the public website URL, but only an authenticated account can read or write cloud progress. Keep your email/password private.

## 3. Deploy the updated files to GitHub Pages

1. Download/extract the updated project ZIP.
2. Copy the updated `index.html`, `supabase-config.js`, `SUPABASE_SETUP.sql`, and this README into the root of your existing GitHub repository. Keep all existing project folders.
3. Commit and push the changes to the branch/folder configured for GitHub Pages (usually `main` and `/root`).
4. Open `https://sudhansh3110.github.io/FDE_Progress/` and navigate to **Settings** → **Cloud sync**.
5. Sign in with the Supabase user you created. The app will compare each section's local timestamp with the cloud timestamp and load the newer section. If no cloud row exists, it uploads local data.

## 4. First-use and cross-device test

1. On the device that currently has your progress, first use **Settings** → **Backup** → **Show my backup** and save a copy somewhere safe.
2. Deploy the updated code, open the site on that same device, sign in, and wait for the status to say **Cloud sync is active**.
3. Open the public site on another device, go to **Settings** → **Cloud sync**, and sign in with the same account.
4. Verify completed lessons, quiz answers, coding solutions, Studio notes and project checklists.
5. Make a small test change on one device. Return to the other device or refresh it; the app refreshes cloud progress when the page becomes visible again.

## Notes

- The project URL in `supabase-config.js` must be the project root (`https://<project-ref>.supabase.co`), not the REST endpoint ending in `/rest/v1/`.
- `supabase-config.js` contains a publishable key. This key is designed to be exposed in browser code. RLS is what protects the data.
- Never paste a `sb_secret_...` or legacy `service_role` key into GitHub or this website.
- Local progress remains in this browser if Supabase is unreachable. The sync indicator will show an error; do not clear browser storage until a successful cloud sync has been confirmed.
- The sync uses a last-updated timestamp per section. Avoid editing the same section on two devices while offline, because the later timestamp wins for that section.
