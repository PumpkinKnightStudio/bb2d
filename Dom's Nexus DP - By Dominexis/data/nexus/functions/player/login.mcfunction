# Display first part of message








# Execute login functions

function #nexus:player/login







# Display last part of message

#execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]
#execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"By ","color":"gray"},{"text":"Dominexis","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/c/Dominexis"},"hoverEvent":{"action":"show_text","value":[{"text":"My YouTube Channel","color":"gold"}]}}]
#execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]







# Set hurt time to 3 and 1/4 seconds

scoreboard players set @s nexus.hp_time 65







# Remove tags

effect clear @s[tag=nexus.player.motion] slow_falling
tag @s remove nexus.player.motion
tag @s remove nexus.player.launch.gamemode







# Synchronize timers

scoreboard players operation @s nexus.ticks = #global nexus.ticks