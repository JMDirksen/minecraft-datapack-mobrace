# Game 1 - Zombies
execute as @a if score $game mobrace matches 1 run scoreboard players operation @s score = @s zombie
execute as @a if score $game mobrace matches 1 run scoreboard players operation @s score += @s zombie_villager

# Game 2 - Spiders
execute as @a if score $game mobrace matches 2 run scoreboard players operation @s score = @s spider
execute as @a if score $game mobrace matches 2 run scoreboard players operation @s score += @s cave_spider
