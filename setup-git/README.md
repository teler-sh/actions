# Set up git action

An action that configures `git` for specified GitHub user.

## Usage

```yaml
- name: Configure git
  uses: kitabisa/composite-actions/utils/setup-git@v2
  with:
    # Defaults to "ghost" if not specified.
    username: ${{ github.actor }}
    # Defaults to "local" if not specified.
    scope: local # valid scopes are "global", "system", "local", or "worktree".
```
