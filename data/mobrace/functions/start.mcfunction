# Reset stuff
scoreboard players reset * score

# Select random game
scoreboard players set $max random 2
function mobrace:random
scoreboard players operation $game mobrace = $random random

# Setup game all
title @a times 20 100 20
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 .5
execute as @a at @s run playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 .5

# Setup game 1 - Zombies
execute if score $game mobrace matches 1 run scoreboard players reset * zombie
execute if score $game mobrace matches 1 run scoreboard players reset * zombie_villager
execute if score $game mobrace matches 1 run scoreboard objectives modify score displayname {"text":"Zombie Slayer","color":"aqua","bold": true}
execute if score $game mobrace matches 1 run title @a subtitle {"text":"Who can kill the most zombies tonight?","color":"gray"}
execute if score $game mobrace matches 1 run title @a title {"text":"Zombie Slayer!","color":"aqua"}

# Setup game 2 - Spiders
execute if score $game mobrace matches 2 run scoreboard players reset * spider
execute if score $game mobrace matches 2 run scoreboard players reset * cave_spider
execute if score $game mobrace matches 2 run scoreboard objectives modify score displayname {"text":"Arachnophobe","color":"aqua","bold": true}
execute if score $game mobrace matches 2 run title @a subtitle {"text":"Who can kill the most spiders tonight?","color":"gray"}
execute if score $game mobrace matches 2 run title @a title {"text":"Arachnophobe!","color":"aqua"}

scoreboard objectives setdisplay sidebar score
schedule function mobrace:stop 540s
