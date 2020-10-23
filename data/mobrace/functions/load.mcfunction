scoreboard objectives add mobrace dummy
scoreboard objectives add score dummy
scoreboard objectives add winner dummy
scoreboard objectives add random dummy
scoreboard objectives add wins dummy
scoreboard objectives modify wins displayname {"text":"Rounds Won","color":"green","bold": true}
scoreboard players set $game mobrace 0
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list wins
schedule clear mobrace:stop
function mobrace:loop

# Game 1 - Zombies
scoreboard objectives add zombie minecraft.killed:zombie
scoreboard objectives add zombie_villager minecraft.killed:zombie_villager

# Game 2 - Spiders
scoreboard objectives add spider minecraft.killed:spider
scoreboard objectives add cave_spider minecraft.killed:cave_spider

# Game 3 - Skeletons
scoreboard objectives add skeleton minecraft.killed:skeleton
scoreboard objectives add skeleton_horse minecraft.killed:skeleton_horse
scoreboard objectives add wither_skeleton minecraft.killed:wither_skeleton

# Game 4 - Creepers
scoreboard objectives add creeper minecraft.killed:creeper
