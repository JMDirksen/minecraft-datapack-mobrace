# Reset stuff
scoreboard players reset * score

# Select random game
scoreboard players set $max random 2
function mobrace:random
scoreboard players operation $game mobrace = $random random

# Setup game 1
execute if score $game mobrace matches 1 run say Kill as many zombies as you can in the next 5 minutes
execute if score $game mobrace matches 1 run scoreboard players reset * zombie
execute if score $game mobrace matches 1 run scoreboard players reset * zombie_villager
execute if score $game mobrace matches 1 run scoreboard objectives modify score displayname {"text":"Zombie Slayer","color":"aqua"}

# Setup game 2
execute if score $game mobrace matches 2 run say Kill as many spiders as you can in the next 5 minutes
execute if score $game mobrace matches 2 run scoreboard players reset * spider
execute if score $game mobrace matches 2 run scoreboard players reset * cave_spider
execute if score $game mobrace matches 2 run scoreboard objectives modify score displayname {"text":"Arachnophobe","color":"aqua"}

scoreboard objectives setdisplay sidebar score
schedule function mobrace:stop 300s
