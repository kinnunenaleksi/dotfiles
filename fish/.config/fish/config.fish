set -Ux fish_user_paths /Users/aleksi/.pyenv/shims $fish_user_paths


alias icloud="~/Library/Mobile\ Documents/com\~apple\~CloudDocs/"

# Ensure fzf.fish is loaded, then configure bindings
if functions -q fzf_configure_bindings
    fzf_configure_bindings --directory=\cT
end

