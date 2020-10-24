# Reset stuff
scoreboard players reset * score

# Select random game
scoreboard players set $max random 5
function mobrace:random
scoreboard players operation $game mobrace = $random random

# Setup game
title @a times 20 100 20
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 .5
execute as @a at @s run playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 .5
scoreboard objectives setdisplay sidebar score
scoreboard players set $highscore mobrace 0

# Setup game 1 - Zombies
execute if score $game mobrace matches 1 run scoreboard players reset * zombie
execute if score $game mobrace matches 1 run scoreboard players reset * zombie_villager
execute if score $game mobrace matches 1 run scoreboard objectives modify score displayname {"text":"Zombie Slayer","color":"aqua","bold": true}
execute if score $game mobrace matches 1 run title @a subtitle {"text":"Who can kill the most zombies tonight?","color":"gray"}
execute if score $game mobrace matches 1 run title @a title {"text":"Zombie Slayer!","color":"aqua"}
execute if score $game mobrace matches 1 run tellraw @a ["",{"text":"Zombie Slayer!","color":"aqua"},{"text":" Who can kill the most zombies tonight?","color":"gray"}]

# Setup game 2 - Spiders
execute if score $game mobrace matches 2 run scoreboard players reset * spider
execute if score $game mobrace matches 2 run scoreboard players reset * cave_spider
execute if score $game mobrace matches 2 run scoreboard objectives modify score displayname {"text":"Arachnophobe","color":"aqua","bold": true}
execute if score $game mobrace matches 2 run title @a subtitle {"text":"Who can kill the most spiders tonight?","color":"gray"}
execute if score $game mobrace matches 2 run title @a title {"text":"Arachnophobe!","color":"aqua"}
execute if score $game mobrace matches 2 run tellraw @a ["",{"text":"Arachnophobe!","color":"aqua"},{"text":" Who can kill the most spiders tonight?","color":"gray"}]

# Setup game 3 - Skeletons
execute if score $game mobrace matches 3 run scoreboard players reset * skeleton
execute if score $game mobrace matches 3 run scoreboard players reset * skeleton_horse
execute if score $game mobrace matches 3 run scoreboard players reset * wither_skeleton
execute if score $game mobrace matches 3 run scoreboard objectives modify score displayname {"text":"Bones","color":"aqua","bold": true}
execute if score $game mobrace matches 3 run title @a subtitle {"text":"Who can kill the most skeletons tonight?","color":"gray"}
execute if score $game mobrace matches 3 run title @a title {"text":"Bones!","color":"aqua"}
execute if score $game mobrace matches 3 run tellraw @a ["",{"text":"Bones!","color":"aqua"},{"text":" Who can kill the most skeletons tonight?","color":"gray"}]

# Setup game 4 - Creeper
execute if score $game mobrace matches 4 run scoreboard players reset * creeper
execute if score $game mobrace matches 4 run scoreboard objectives modify score displayname {"text":"Boom","color":"aqua","bold": true}
execute if score $game mobrace matches 4 run title @a subtitle {"text":"Who can kill the most creepers tonight?","color":"gray"}
execute if score $game mobrace matches 4 run title @a title {"text":"Boom!","color":"aqua"}
execute if score $game mobrace matches 4 run tellraw @a ["",{"text":"Boom!","color":"aqua"},{"text":" Who can kill the most creepers tonight?","color":"gray"}]

# Setup game 5 - Endermen
execute if score $game mobrace matches 5 run scoreboard players reset * enderman
execute if score $game mobrace matches 5 run scoreboard objectives modify score displayname {"text":"Endermen","color":"aqua","bold": true}
execute if score $game mobrace matches 5 run title @a subtitle {"text":"Who can kill the most endermen tonight?","color":"gray"}
execute if score $game mobrace matches 5 run title @a title {"text":"Don't look!","color":"aqua"}
execute if score $game mobrace matches 5 run tellraw @a ["",{"text":"Don't look!","color":"aqua"},{"text":" Who can kill the most endermen tonight?","color":"gray"}]
