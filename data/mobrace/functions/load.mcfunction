scoreboard objectives add mobrace dummy
scoreboard objectives add score dummy
scoreboard objectives add winner dummy

scoreboard objectives add zombie minecraft.killed:zombie
scoreboard objectives add zombie_villager minecraft.killed:zombie_villager
scoreboard objectives add spider minecraft.killed:spider
scoreboard objectives add cave_spider minecraft.killed:cave_spider

scoreboard players set $game mobrace 0
scoreboard objectives setdisplay sidebar
schedule clear mobrace:stop

function mobrace:loop
