# Remove offline players scores
scoreboard players reset * score
function mobrace:updatescores

# Get highest score and winner
scoreboard players set $highscore mobrace 0
execute as @a if score @s score > $highscore mobrace run scoreboard players operation $highscore mobrace = @s score
scoreboard players reset * winner
execute as @a if score $highscore mobrace matches 1.. if score @s score = $highscore mobrace run scoreboard players set @s winner 1

# Count wins
scoreboard players add @a[scores={winner=1}] wins 1
schedule function mobrace:showwins 5s

# Stop game
scoreboard players set $game mobrace 0
schedule clear mobrace:stop
schedule function mobrace:hidesidebar 30s

# Sound and title
title @a times 20 100 20
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 .5
execute as @a at @s run playsound minecraft:block.conduit.ambient master @s ~ ~ ~ 1 .5
execute if score $highscore mobrace matches 1.. run title @a subtitle ["",{"selector":"@a[scores={winner=1}]"},{"text":" has won this round!"}]
execute if score $highscore mobrace matches 0 run title @a subtitle {"text":"No winner this round"}
title @a title {"text":"The race has ended","color":"aqua"}
