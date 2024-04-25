#setblock -163 -1 -278 structure_block[mode=load]{name:"minecraft:middle_structure",posX:1,posY:-1,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

setblock -163 -1 -266 structure_block[mode=load]{name:"minecraft:middle_left_island",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -163 -1 -290 structure_block[mode=load]{name:"minecraft:middle_right_island",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace


setblock -163 -1 -266 structure_block[mode=load]{name:"minecraft:middle_left_island",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -163 -1 -290 structure_block[mode=load]{name:"minecraft:middle_right_island",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute if score .choice mapVote matches 3 run setblock -163 -1 -266 structure_block[mode=load]{name:"minecraft:middle_left_island_dessert",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score .choice mapVote matches 3 run setblock -163 -1 -290 structure_block[mode=load]{name:"minecraft:middle_right_island_dessert",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute if score .choice mapVote matches 1 run setblock -163 -1 -266 structure_block[mode=load]{name:"minecraft:middle_left_area3",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score .choice mapVote matches 1 run setblock -163 -1 -290 structure_block[mode=load]{name:"minecraft:middle_right_area3",posX:1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

setblock -163 -2 -266 minecraft:redstone_block
setblock -163 -2 -266 minecraft:air

setblock -163 -2 -290 minecraft:redstone_block
setblock -163 -2 -290 minecraft:air

#setblock -161 1 -278 minecraft:white_stained_glass

#setblock -161 1 -277 minecraft:white_stained_glass
#setblock -161 1 -279 minecraft:white_stained_glass

#setblock -161 1 -276 minecraft:white_stained_glass
#setblock -161 1 -280 minecraft:white_stained_glass

setblock -161 1 -291 minecraft:white_stained_glass
setblock -161 1 -290 minecraft:white_stained_glass
setblock -161 1 -289 minecraft:white_stained_glass

setblock -161 1 -267 minecraft:white_stained_glass
setblock -161 1 -266 minecraft:white_stained_glass
setblock -161 1 -265 minecraft:white_stained_glass


scoreboard players set .contest contestPoint 0
execute as @a[x=-152,y=2,z=-289.5,distance=0..1.5,team=left] at @s run scoreboard players remove .contest contestPoint 1
execute as @a[x=-152,y=2,z=-289.5,distance=0..1.5,team=right] at @s run scoreboard players add .contest contestPoint 1


## NEW ##
scoreboard players set .contest contestPoint2 0
execute as @a[x=-152,y=2,z=-265.5,distance=0..1.5,team=left] at @s run scoreboard players remove .contest contestPoint2 1
execute as @a[x=-152,y=2,z=-265.5,distance=0..1.5,team=right] at @s run scoreboard players add .contest contestPoint2 1

#########

execute if score .contest contestPoint matches 1.. run scoreboard players add .point factionPoint 1
execute if score .contest contestPoint matches ..-1 run scoreboard players remove .point factionPoint 1

execute if score .contest contestPoint2 matches 1.. run scoreboard players add .point factionPoint2 1
execute if score .contest contestPoint2 matches ..-1 run scoreboard players remove .point factionPoint2 1



execute if score .point factionPoint matches ..-450 run scoreboard players set .point factionPoint -450
execute if score .point factionPoint matches 450.. run scoreboard players set .point factionPoint 450


execute if score .point factionPoint2 matches ..-450 run scoreboard players set .point factionPoint2 -450
execute if score .point factionPoint2 matches 450.. run scoreboard players set .point factionPoint2 450



execute if score .point factionPoint2 matches ..-100 run setblock -161 1 -265 minecraft:blue_stained_glass
execute if score .point factionPoint2 matches ..-300 run setblock -161 1 -266 minecraft:blue_stained_glass
execute if score .point factionPoint2 matches ..-450 run setblock -161 1 -267 minecraft:blue_stained_glass

execute if score .point factionPoint matches 100.. run setblock -161 1 -289 minecraft:orange_stained_glass
execute if score .point factionPoint matches 300.. run setblock -161 1 -290 minecraft:orange_stained_glass
execute if score .point factionPoint matches 450.. run setblock -161 1 -291 minecraft:orange_stained_glass

execute if score .point factionPoint matches ..-100 run setblock -161 1 -289 minecraft:blue_stained_glass
execute if score .point factionPoint matches ..-300 run setblock -161 1 -290 minecraft:blue_stained_glass
execute if score .point factionPoint matches ..-450 run setblock -161 1 -291 minecraft:blue_stained_glass



execute if score .point factionPoint2 matches 100.. run setblock -161 1 -265 minecraft:orange_stained_glass
execute if score .point factionPoint2 matches 300.. run setblock -161 1 -266 minecraft:orange_stained_glass
execute if score .point factionPoint2 matches 450.. run setblock -161 1 -267 minecraft:orange_stained_glass






execute if score .point factionPoint matches 450.. run execute if score .point factionPoint2 matches -449..449 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⛫","color":"gold"},{"text":"_____","color":"gold"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches 450.. run execute if score .point factionPoint2 matches 450.. run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"red"},{"text":"⛫","color":"gold"},{"text":"_____","color":"gold"},{"text":"⛫","color":"gold"},{"text":"_____","color":"gold"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches -449..449 run execute if score .point factionPoint2 matches 450.. run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"gold"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches ..-450 run execute if score .point factionPoint2 matches 450.. run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"gold"},{"text":"_____","color":"white"},{"text":"⛫","color":"blue"},{"text":"_____","color":null},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches ..-450 run execute if score .point factionPoint2 matches -450 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"blue"},{"text":"⛫","color":"blue"},{"text":"_____","color":"blue"},{"text":"⛫","color":"blue"},{"text":"_____","color":"red"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches ..-450 run execute if score .point factionPoint2 matches -449..449 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⛫","color":"blue"},{"text":"_____","color":"white"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches -449..449 run execute if score .point factionPoint2 matches -449..449 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches -449..449 run execute if score .point factionPoint2 matches ..-450 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"blue"},{"text":"⛫","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"white"},{"text":"_____","color":"white"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]
execute if score .point factionPoint matches 450.. run execute if score .point factionPoint2 matches ..-450 run bossbar set minecraft:faction_spawn name [{"score":{"name":".leftScore","objective":"gameDatabase"},"color":"blue"},{"text":" ⚑","color":"blue"},{"text":"_____","color":"blue"},{"text":"⛫","color":"blue"},{"text":"_____","color":"white"},{"text":"⛫","color":"gold"},{"text":"_____","color":"gold"},{"text":"⚑ ","color":"gold"},{"score":{"name":".rightScore","objective":"gameDatabase"},"color":"gold"}]


bossbar set minecraft:faction_spawn players @a
execute store result bossbar minecraft:faction_spawn value run scoreboard players get .time arenaTime


execute if score .eventCounter arenaTime matches 0 run execute if score .leftScore gameDatabase > .rightScore gameDatabase run bossbar set minecraft:faction_spawn color blue
execute if score .eventCounter arenaTime matches 0 run execute if score .leftScore gameDatabase < .rightScore gameDatabase run bossbar set minecraft:faction_spawn color red
execute if score .eventCounter arenaTime matches 0 run execute if score .leftScore gameDatabase = .rightScore gameDatabase run bossbar set minecraft:faction_spawn color white
execute if score .eventCounter arenaTime matches 1.. run bossbar set minecraft:faction_spawn color pink

#execute if score .time arenaTime matches 9000.. run bossbar set minecraft:faction_spawn color red