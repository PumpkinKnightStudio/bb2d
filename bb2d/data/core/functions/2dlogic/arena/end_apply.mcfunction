#clear @a

## ABILITY TOOL
clear @a minecraft:carrot_on_a_stick{abilityTool:1}
clear @a minecraft:carrot_on_a_stick{abilityTool:2}
clear @a minecraft:carrot_on_a_stick{abilityTool:3}
clear @a minecraft:carrot_on_a_stick{abilityTool:4}
clear @a minecraft:carrot_on_a_stick{abilityTool:5}

## ITEM IN THE GAME
clear @a minecraft:carrot_on_a_stick{asItem:1}
## BUILDING BLOCK
clear @a minecraft:carrot_on_a_stick{builder:1}
## STICKMAN ITEM
clear @a minecraft:carrot_on_a_stick{element:1}

## CLEAR AFTER MATCH ITEM
clear @a shield
item replace entity @a armor.head with minecraft:air
item replace entity @a armor.chest with minecraft:air
item replace entity @a armor.legs with minecraft:air
item replace entity @a armor.feet with minecraft:air

## RESET ARMOR
scoreboard players set @a armorC_Level 0
scoreboard players set @a playerPage 0
scoreboard players set @a effect.paralyze.time 0
scoreboard players set @a effect.poison 0
scoreboard players set @a effect.warcry 0

scoreboard players set .gameState gameControl 0
kill @e[type=armor_stand]
tp @a 237 5 -262 0 0
effect clear @a
bossbar set minecraft:the_end players
stopsound @a

function core:2dlogic/arena/element/create_npc

execute if score .type gameType matches 1 run execute if score .leftScore gameDatabase > .rightScore gameDatabase run title @a title [{"text":"Left Wins!"}]

execute if score .type gameType matches 1 run execute if score .leftScore gameDatabase < .rightScore gameDatabase run title @a title [{"text":"Right Wins!"}]

execute if score .type gameType matches 1 run execute if score .leftScore gameDatabase = .rightScore gameDatabase run title @a title [{"text":"Draw!"}]

execute if score .type gameType matches 3 run execute if score .leftScore gameDatabase > .rightScore gameDatabase run title @a title [{"text":"Left Wins!"}]

execute if score .type gameType matches 3 run execute if score .leftScore gameDatabase < .rightScore gameDatabase run title @a title [{"text":"Right Wins!"}]

execute if score .type gameType matches 3 run execute if score .leftScore gameDatabase = .rightScore gameDatabase run title @a title [{"text":"Draw!"}]

execute if score .type gameType matches 2 run execute unless entity @a[team=left,scores={playerID=1..}] run title @a title [{"text":"Right Wins!"}]

execute if score .type gameType matches 2 run execute unless entity @a[team=right,scores={playerID=1..}] run title @a title [{"text":"Left Wins!"}]

execute if score .type gameType matches 4 run execute unless entity @a[team=left,scores={playerID=1..}] run title @a title [{"text":"Infected Wins!"}]

execute if score .type gameType matches 4 run execute if entity @a[team=left,scores={playerID=1..}] run title @a title [{"text":"Survivors Wins!"}]

tag @a remove inGame
scoreboard players reset @a playerID
scoreboard players reset .counter playerID

bossbar set minecraft:faction_spawn players
bossbar set game:voting players

kill @e[type=block_display,scores={playerID=1..}]
kill @e[type=armor_stand,tag=petModel]

kill @e[tag=req_delete]

scoreboard players reset * playerID
scoreboard players reset * checkID

scoreboard players reset * reduceDMG
scoreboard players reset * damagerID
scoreboard players reset * mapVote

kill @e[tag=class_selector]

scoreboard players set @a lobbyMusicC 0


execute as @a run attribute @s minecraft:generic.max_health base set 20
effect give @a instant_health 1 10 true
scoreboard objectives setdisplay list gold

function core:2dlogic/arena/make_map/empty
execute as @a run function core:2dlogic/arena/reset_shop

time set 6000
weather clear

function bb2d_jmc:announcebar/refresh_other
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.1
scoreboard players set @a chr.abi3.cd 0
scoreboard players set @a chr.abi4.cd 0
scoreboard players set @a chr.abi5.cd 0

scoreboard players set @a leo.absorb.physical 0
scoreboard players set @a leo.hold.charge 0

scoreboard objectives setdisplay sidebar

## CHALLENGES ####################

## CHAPTER 2

## No Death as Devastator
execute as @a run execute if score @s[advancements={core:chapter_two_quest/devast_survivor=false}] deathCount matches 0 run execute if score @s useCustomHead matches 12 run function core:2dlogic/arena/reward_one
execute as @a run execute if score @s[advancements={core:chapter_two_quest/devast_survivor=false}] deathCount matches 0 run execute if score @s useCustomHead matches 12 run advancement grant @s only core:chapter_two_quest/devast_survivor


execute if score .type gameType matches 1 run execute if score .leftScore gameDatabase > .rightScore gameDatabase run execute as @a[team=left] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 1 run execute if score .leftScore gameDatabase < .rightScore gameDatabase run execute as @a[team=right] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 3 run execute if score .leftScore gameDatabase > .rightScore gameDatabase run execute as @a[team=left] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 3 run execute if score .leftScore gameDatabase < .rightScore gameDatabase run execute as @a[team=right] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 2 run execute unless entity @a[team=left,scores={playerID=1..}] run execute as @a[team=right] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 2 run execute unless entity @a[team=right,scores={playerID=1..}] run execute as @a[team=left] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 4 run execute unless entity @a[team=left,scores={playerID=1..}] run execute as @a[team=right] run function core:2dlogic/arena/reward_team

execute if score .type gameType matches 4 run execute if entity @a[team=left,scores={playerID=1..}] run execute as @a[team=left] run function core:2dlogic/arena/reward_team

##################################

execute as @a run tellraw @s ["",{"text":"Damage Received: ","color":"red"},{"score":{"name":"@s","objective":"damageSustained"}}]
execute as @a run tellraw @s ["",{"text":"Death Count: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"}}]
execute as @a run tellraw @s ["",{"text":"Damage Dealt: ","color":"red"},{"score":{"name":"@s","objective":"attackDealed"}}]

team join lobby @a