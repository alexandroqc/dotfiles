#!/usr/bin/bash
lid_state_file=$(find /proc/acpi/button/lid -type f -name state -print -quit 2>/dev/null)

if [[ -z "$lid_state_file" ]]; then
    exit 0
fi

if grep -Eq '^state:[[:space:]]+open$' "$lid_state_file"; then
    swaymsg output eDP-1 enable
else
    swaymsg output eDP-1 disable
fi
