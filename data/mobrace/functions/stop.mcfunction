say The race has ended

# Remove offline players scores
scoreboard players reset * score
function mobrace:updatescores

# Get highest score and winner
scoreboard players set $highscore mobrace 0
execute as @a if score @s score > $highscore mobrace run scoreboard players operation $highscore mobrace = @s score
scoreboard players reset * winner
execute as @a if score @s score = $highscore mobrace run scoreboard players set @s winner 1

# Stop game
scoreboard players set $game mobrace 0
schedule clear mobrace:stop
schedule function mobrace:hidesidebar 30s

# Winner
tellraw @a ["",{"text":"And the winner is: "},{"selector":"@a[scores={winner=1}]"}]
