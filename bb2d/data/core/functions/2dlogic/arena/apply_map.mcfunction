## SET TERRAIN
setblock -162 -1 -284 minecraft:redstone_block
setblock -162 -1 -284 minecraft:air



## CLEAR LEFT
fill -154 -1 -249 -180 25 -212 air
fill -154 25 -249 -180 35 -212 air

fill -154 -1 -275 -180 25 -307 air
fill -154 25 -275 -180 35 -307 air

fill -180 -1 -307 -146 25 -340 air
fill -180 25 -307 -146 35 -340 air

effect give @a blindness 1 1 true

## CHECK THIS ! #################################

fill -158 -4 -244 -164 7 -279 air
fill -161 9 -239 -161 9 -284 minecraft:barrier

#################################################

## SET BASE 1 ###########################################
execute if score .choice mapVote matches 1 run setblock -158 1 -243 structure_block[mode=load]{name:"minecraft:base_1_left",posX:-7,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute if score .choice mapVote matches 1 run setblock -158 1 -321 structure_block[mode=load]{name:"minecraft:base_1_right",posX:-7,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

## activate right stage 1
execute if score .choice mapVote matches 1 run setblock -158 2 -321 minecraft:redstone_block 
execute if score .choice mapVote matches 1 run setblock -158 2 -321 minecraft:air
execute if score .choice mapVote matches 1 run setblock -158 1 -321 minecraft:air

execute if score .choice mapVote matches 1 run time set 12000

###########################################

## SET BASE 2 ###########################################
execute if score .choice mapVote matches 2 run setblock -158 1 -243 structure_block[mode=load]{name:"minecraft:base_2_left",posX:-35,posY:0,posZ:-5,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute if score .choice mapVote matches 2 run setblock -158 1 -313 structure_block[mode=load]{name:"minecraft:base_2_right",posX:-35,posY:0,posZ:-35,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute if score .choice mapVote matches 2 run setblock -158 2 -313 minecraft:redstone_block
execute if score .choice mapVote matches 2 run setblock -158 1 -313 minecraft:air

execute if score .choice mapVote matches 2 run time set 22500



###########################################

## MISC

# ACTIVAATE LEFT GLOBAL
setblock -158 2 -243 minecraft:redstone_block
setblock -158 2 -243 minecraft:air
setblock -158 1 -243 minecraft:air



## PATCH TERRAIN 1
#execute if score .choice mapVote matches 1 run setblock -154 0 -285 structure_block[mode=load]{name:"minecraft:standing_terrain1",posY:1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

#### MAKE BARRIER ##############################

# FRONT BARRIER
fill -153 1 -239 -153 16 -318 barrier
# Back BARRIER
fill -151 1 -239 -151 16 -318 barrier
# TOP PART
fill -152 13 -319 -152 13 -239 barrier


#################################################

# MIDDLE CLEAN PLAYER AREA SPAWN
fill -152 1 -313 -152 12 -239 air


## DEFAULT

setblock -154 0 -285 structure_block[mode=load]{name:"minecraft:standing_terrain1",posY:1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

# MIDDLE VOID


setblock -154 1 -284 minecraft:redstone_block
setblock -154 1 -284 minecraft:air
setblock -154 0 -284 minecraft:air



kill @e[type=item]

# FIX BARRIER SIDE

# FIX RIGHT
setblock -152 7 -285 minecraft:air
setblock -152 8 -285 minecraft:air

# FIX LEFT
setblock -152 7 -238 minecraft:air
setblock -152 8 -238 minecraft:air

fill -152 7 -238 -152 10 -242 minecraft:air
fill -152 7 -285 -152 10 -282 minecraft:air


## SPAWN RIGHT PLAYER BASE
setblock -152 0 -318 structure_block[mode=load]{name:"minecraft:default_terrain_right",posX:-1,posY:1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -152 -1 -318 minecraft:redstone_block
setblock -152 -1 -318 minecraft:air
setblock -152 0 -318 minecraft:air
setblock -152 6 -318 minecraft:barrier

## SPAWN LEFT PLAYER BASE
setblock -152 0 -238 structure_block[mode=load]{name:"minecraft:default_terrain_left",posX:-1,posY:1,posZ:-14,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -152 -1 -238 minecraft:redstone_block
setblock -152 -1 -238 minecraft:air
setblock -152 0 -238 minecraft:air

## SHOP HOLE FRONT LEFT
setblock -153 3 -239 minecraft:air
## SHOP HOLE FRONT RIGHT
setblock -153 3 -317 minecraft:air


## ARENA AREA CLEAR
fill -161 1 -244 -162 7 -312 air
fill -161 8 -244 -162 16 -312 air


## ENDERCHEST PATCH

setblock -154 3 -239 minecraft:ender_chest[facing=east]
setblock -154 3 -317 minecraft:ender_chest[facing=east]

## MIDDLE TERRAIN TOP BARRIER PATCH
fill -161 14 -315 -161 14 -241 barrier

## PATCH BARRIER TRAVEL
fill -161 6 -243 -161 14 -241 barrier
fill -161 6 -314 -161 14 -315 barrier

## SPAWN GENERATOR BARRIER
setblock -112 30 -234 barrier
setblock -113 30 -238 barrier

execute if score .choice mapVote matches 3 run function core:2dlogic/arena/make_map/dessert
execute if score .choice mapVote matches 1 run function core:2dlogic/arena/make_map/city3

execute if score .autoBridge gameSetting matches 1 run function core:2dlogic/arena/make_map/bridge_stone
gamerule fallDamage false