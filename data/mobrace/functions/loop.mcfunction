schedule function mobrace:loop 1s

# 50% chance of starting game when night falls and 2 or more players are online
# Count players
execute store result score $playercount mobrace if entity @a
# Get daytime
execute store result score $daytime mobrace run time query daytime
# Get random number (1-2)
scoreboard players set $max random 2
function mobrace:random
# Conditionally start game
execute if score $playercount mobrace matches 2.. if score $daytime mobrace matches 12541..12560 if score $random random matches 1 run function mobrace:start

# Update scores
function mobrace:updatescores

# Stop game when day
execute if score $game mobrace matches 1.. if score $daytime mobrace matches 0..12540 run function mobrace:stop
