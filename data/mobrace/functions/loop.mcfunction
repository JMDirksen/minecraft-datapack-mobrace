schedule function mobrace:loop 1s

# 1 in 3 chance of starting game when night falls
scoreboard players set $max random 3
function mobrace:random
execute store result score $daytime mobrace run time query daytime
execute if score $daytime mobrace matches 12541..12560 if score $random random matches 1 run function mobrace:start

# Update scores
function mobrace:updatescores
