
#!/bin/bash

VOLUME_RAW=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
VOLUME=$(echo "$VOLUME_RAW" | awk '{print $2 * 100}' | cut -d'.' -f1)

if [[ "$VOLUME_RAW" == *"[MUTED]"* ]]; then
  echo "$VOLUME% "
else
  echo "$VOLUME%"
fi
