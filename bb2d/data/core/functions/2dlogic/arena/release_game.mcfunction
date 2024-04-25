#stopsound @a


execute if score .type gameType matches 1 run scoreboard players set .musicNum musicBoard 1
execute unless score .musicNum musicBoard matches 1 run execute if score .type gameType matches 1 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 2 run scoreboard players set .musicNum musicBoard 5
execute unless score .musicNum musicBoard matches 5 run execute if score .type gameType matches 2 run scoreboard players set .musicTime musicBoard 0

setblock 54 5 -262 structure_block[mode=load]{name:"minecraft:vote_gate_down",posX:-1,posY:0,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock 54 6 -262 redstone_block
setblock 54 5 -262 air
setblock 54 6 -262 air