scoreboard players add .spawn gachaOpen 1


execute if score .spawn gachaOpen matches 5 run summon falling_block 253 8 -249 {BlockState:{Name:"minecraft:sniffer_egg",Properties:{age:"0"}},Time:1}


execute if score .spawn gachaOpen matches 10 run execute store result score .num randomPets run loot spawn 320 1 -246 loot core:random
execute if score .spawn gachaOpen matches 10 run scoreboard players add .transID petsTransID 1
execute if score .spawn gachaOpen matches 10 run scoreboard players operation @a[scores={buyingPets=1}] petsTransID = .transID petsTransID

execute if score .spawn gachaOpen matches 60 run setblock 253 6 -249 minecraft:sniffer_egg[hatch=1]
execute if score .spawn gachaOpen matches 60 run playsound minecraft:block.sniffer_egg.crack master @a 253 6 -249 1 1

execute if score .spawn gachaOpen matches 100 run setblock 253 6 -249 minecraft:sniffer_egg[hatch=2]
execute if score .spawn gachaOpen matches 100 run playsound minecraft:block.sniffer_egg.crack master @a 253 6 -249 1 1

execute if score .spawn gachaOpen matches 120 run setblock 253 6 -249 air destroy
execute if score .spawn gachaOpen matches 120 run playsound minecraft:block.sniffer_egg.crack master @a 253 6 -249 1 1
execute if score .spawn gachaOpen matches 120 run kill @e[type=item,nbt={Item:{id:"minecraft:sniffer_egg"}}]

execute if score .spawn gachaOpen matches 120 run function core:2dlogic/gacha/summon_pets



execute if score .spawn gachaOpen matches 299 run kill @e[tag=pets_spawner]

execute if score .spawn gachaOpen matches 300.. run scoreboard players set @s buyingPets 0
execute if score .spawn gachaOpen matches 300.. run scoreboard players set .activator gachaActive 0
execute if score .spawn gachaOpen matches 300.. run scoreboard players set .spawn gachaOpen 0



## TELEPORT

execute if score .spawn gachaOpen matches 100..130 run execute as @e[tag=pets_spawner] at @s run tp @s ~ ~-0.08 ~
execute if score .spawn gachaOpen matches 150.. run execute as @e[tag=pets_spawner] at @s run tp @s ~ ~ ~ ~1 ~