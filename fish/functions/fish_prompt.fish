function fish_prompt
    if set -q debian_chroot
        printf '(%s) ' "$debian_chroot"
    else if set -q DEBIAN_CHROOT
        printf '(%s) ' "$DEBIAN_CHROOT"
    end

    set -l user (whoami)
    set -l host (hostname -s)
    set -l cwd (pwd)

    set -l branch ''
    if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set branch (command git rev-parse --abbrev-ref HEAD 2>/dev/null)
    end

    set_color green --bold
    printf '%s' "$user"

    set_color blue --bold
    printf '@'

    set_color green --bold
    printf '%s' "$host"

    set_color normal
    printf ':'

    set_color blue --bold
    printf '%s' "$cwd"
    set_color normal --bold

    if test -n "$branch"
        set_color yellow --bold
        printf '(%s)' "$branch"
        set_color normal --bold
    end

    if test (id -u) -eq 0
        printf '# '
    else
        printf '$ '
    end
end

