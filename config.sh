# If true, logger will show more info
# Valid values: true/false
DEBUG=true

# The X dimension of screen
# Valid values: any integer lesser or equal to your screen X resolution and greater than 0
SIZE=1366

# Count of videos that will be shown on search
# Valid values: any integer greater than 0
COUNT=5

# Format in which files will be saved
# Valid values: any string that satisfy pattern for youtube-dl (check their GitHub page, section "OUTPUT TEMPLATE")
FORMAT="[%(channel)s] -> %(title)s.%(ext)s"