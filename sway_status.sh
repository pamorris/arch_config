# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
#date_formatted=$(date "+%d-%m-%Y %H:%M")
date=$(date "+%d-%m-%Y")
time=$(date "+%H:%M")

# Get the Linux version but remove the "-1-ARCH" part
#linux_version=$(uname -r | cut -d '-' -f1)

# Returns the battery status: "Full", "Discharging", or "Charging".
#battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Get the CPU usage
cpu=$(cat /proc/loadavg | cut -d' ' -f1)

# 'Natural' output volume
vol=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget -M Master))


echo ♪ $vol \ \ ⚡ $cpu \ \ ↑$uptime_formatted \ \ $date \ \ $time \ \

