brightnessctl | awk '/\([0-9]+%\)/ { print substr($4, 2, length($4) - 3) }'
