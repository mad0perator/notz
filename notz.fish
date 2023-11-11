# ~/fish/.config/functions/notz.fish
#
# NoTZ --- No Timezone Tag Creator --- a script for use with Discord.
#
# Create a dynamic date/time tag for use with Discord chat.
# This eliminates the problem across multiple timezones.
# ***NOTE*** Time will be local but tag will be UTC time since last epoch
# Just copy and paste the tag into the chat!
#
function notz \
    --wraps=date \
    --description="Convert date/time or current time to dynamic Discord tag. (no TZ)"
    echo "<t:$(date --date "$argv" +%s)>"
    exit 0
end
    
