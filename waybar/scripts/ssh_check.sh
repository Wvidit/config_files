#!/bin/sh

# Check for active SSH connections (port 22)
if ss -tna | grep -E ':22\s+' | grep -q 'ESTAB'; then
    # If connections exist, show an icon and a count in the tooltip
    COUNT=$(ss -tna | grep -E ':22\s+' | grep 'ESTAB' | wc -l)
    TOOLTIP="$COUNT active SSH session(s)"
    TEXT="󰣀 SSH" # SSH Icon
else
    # If no connections, show nothing (or a dimmed icon if you prefer)
    TOOLTIP="No active SSH sessions"
    TEXT="" # Empty text hides the module
fi

# Output in JSON format
printf '{"text": "%s", "tooltip": "%s"}\n' "$TEXT" "$TOOLTIP"i
