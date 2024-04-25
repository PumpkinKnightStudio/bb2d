tp @a[team=left] -152 2 -239 90 0
tp @a[team=right] -152 2 -317 90 0

kill @e[tag=locator_ping]

stopsound @a
execute if score .type gameType matches 1 run scoreboard players set .musicNum musicBoard 2
execute if score .type gameType matches 2 run scoreboard players set .musicNum musicBoard 4
execute if score .type gameType matches 3 run scoreboard players set .musicNum musicBoard 6
execute if score .type gameType matches 4 run scoreboard players set .musicNum musicBoard 8
execute if score .type gameType matches 1..4 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 2 run function core:2dlogic/arena/gamemode/deathmatch

execute as @a run item replace entity @s hotbar.8 with air
execute as @a run function core:menu/reset

## LAST PATCH
execute as @a run execute unless score @s respawnModel matches 1.. run scoreboard players set @s respawnModel 1

effect clear @a
effect give @a minecraft:resistance infinite 255 true
effect give @a minecraft:invisibility infinite 255 true
stopsound @a record minecraft:game.selection

#title @a times 0s 5s 1s
title @a times 0s 5s 1
execute if score .type gameType matches 3 run scoreboard players set .timer dominationTimer 0

scoreboard players set @a[scores={useCustomHead=0}] chr_gender 0
scoreboard players set @a[scores={useCustomHead=1}] chr_gender 1
scoreboard players set @a[scores={useCustomHead=2}] chr_gender 1
scoreboard players set @a[scores={useCustomHead=3}] chr_gender 2
scoreboard players set @a[scores={useCustomHead=4}] chr_gender 1
scoreboard players set @a[scores={useCustomHead=5}] chr_gender 2
scoreboard players set @a[scores={useCustomHead=6}] chr_gender 1
scoreboard players set @a[scores={useCustomHead=7}] chr_gender 2
scoreboard players set @a[scores={useCustomHead=8}] chr_gender 1
scoreboard players set @a[scores={useCustomHead=9}] chr_gender 0
scoreboard players set @a[scores={useCustomHead=10}] chr_gender 2
scoreboard players set @a[scores={useCustomHead=11}] chr_gender 0
scoreboard players set @a[scores={useCustomHead=12}] chr_gender 0
scoreboard players set @a[scores={useCustomHead=14}] chr_gender 1

scoreboard players set @a devast.spin.cd 0
scoreboard players set @a leo.beam.cd 0


scoreboard players operation @s obj.LinkID = @s playerID

function bb2d_jmc:announcebar/refresh_other
scoreboard objectives setdisplay sidebar
scoreboard players set @a deathCount 0
scoreboard players set @a damageSustained 0
scoreboard players set @a attackDealed 0

scoreboard players set @a leo.absorb.physical 0
scoreboard players set @a leo.hold.charge 0