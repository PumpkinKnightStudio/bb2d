scoreboard players operation .orgDamageValue damage = @s damage
scoreboard players set @e[scores={damagerCD=1..}] damagerCD 0

execute as @s run execute if score @s stunted matches 1 run scoreboard players operation @s damage *= .mul2 damage
execute if score @s useCustomHead matches 14 run execute if score @s shieldOn matches 1.. run scoreboard players operation @s leo.absorb.physical += @s damage

## END SCORE REPORT
execute as @s at @s as @a if score @p damagerID = @s playerID run scoreboard players operation @s[type=player] attackDealed += @p damage
scoreboard players operation @s damageSustained += @s damage


## PARRY TRIGGER
execute if score @s useCustomHead matches 8 run execute if score @s animate matches 1.. run execute if score @s actionID matches 4 run execute if score @s damage matches 1.. run function core:2dlogic/morph/cg_addon/stunned
execute if score @s useCustomHead matches 8 run execute if score @s animate matches 1.. run execute if score @s actionID matches 10 run execute if score @s damage matches 1.. run function core:2dlogic/morph/cg_addon/stunned
execute if score @s useCustomHead matches 8 run execute unless score @s actionID matches 10..11 run execute if score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s damage 0
execute if score @s useCustomHead matches 8 run execute unless score @s actionID matches 10..11 run execute if score @s chr.cg.blockTimer matches 1..25 run function core:2dlogic/morph/cg_addon/state_10

execute if score @s useCustomHead matches 2 run execute unless score @s actionID matches 10..11 run execute if score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s damage 0
execute if score @s useCustomHead matches 2 run execute unless score @s actionID matches 10..11 run execute if score @s chr.cg.blockTimer matches 1..25 run function core:2dlogic/morph/tamer_addon/state_10




## ARMOR NEGATION

execute store result score @s defenseAtt run attribute @s minecraft:generic.armor get

execute as @s run execute if score @s defenseAtt matches 1.. run scoreboard players operation @s defenseAtt *= .mul2 damage


scoreboard players operation @s damage -= @s defenseAtt


## REDUCE POINT ## BETA 3

execute at @s run execute if score @s reduceDMG matches 100.. run playsound minecraft:item.shield.block record @a ~ ~ ~ 1 1
execute at @s run execute if score @s reduceDMG matches 100.. run execute if score @s attackFromDir = @s lookingDir run scoreboard players set @s reduceDMG 0


scoreboard players operation @s dmgMemCal1 = @s damage
scoreboard players operation @s dmgMemCal1 *= @s reduceDMG
scoreboard players operation @s dmgMemCal1 /= .100 numValue
scoreboard players operation @s damage -= @s dmgMemCal1



scoreboard players operation .damageValue damage = @s damage


execute at @s run execute if score @s reduceDMG matches 100.. run execute unless score @s attackFromDir = @s lookingDir run scoreboard players set .damageValue damage 0

setblock -89 14 -279 minecraft:oak_sign
data merge block -89 14 -279 {front_text:{messages:['{"score":{"name":".damageValue","objective":"damage"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":""}','{"text":""}','{"text":""}']}}
execute at @s run execute if score @s shieldOn matches 1.. run execute unless score @s attackFromDir = @s lookingDir run data merge block -89 14 -279 {front_text:{messages:['[{"text":"⛊","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" (","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":".orgDamageValue","objective":"damage"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":")","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":""}','{"text":""}','{"text":""}']}}
execute at @s run execute if score @s shieldOn matches 1.. run execute if score @s reduceDMG matches 0 run execute if score @s attackFromDir = @s lookingDir run data merge block -89 14 -279 {front_text:{messages:['[{"text":"✖ ⛉","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" (","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":".orgDamageValue","objective":"damage"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":")","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":""}','{"text":""}','{"text":""}']}}

execute as @s at @s positioned ~-8 ~0.2 ~ run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["dmg_load","eliminate"]}
data merge entity @e[type=armor_stand,tag=dmg_load,limit=1] {CustomNameVisible:1b}
data modify entity @e[type=armor_stand,tag=dmg_load,limit=1] CustomName set from block -89 14 -279 front_text.messages[0]
tag @e[type=armor_stand,tag=dmg_load,limit=1] remove dmg_load




scoreboard players set @s dmgMemCal1 0
scoreboard players set .damageValue damage 0

## DAMAGE THROUGH ARMOR
execute at @s run execute if score @s dam_recieved matches 1.. run execute if score @s defenseAtt matches 1.. run execute if score @s damage matches 1.. run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.25 0.8

## MISS CHECK

execute as @s[scores={damage=..-1}] at @s run function core:2dlogic/damage_interceptor/miss_check


# REMOVE ATTACK IF ARMOR IS HIGH
scoreboard players set @s[scores={damage=..-1}] damage 0

execute as @s[scores={damage=1..}] at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 1

scoreboard players operation @s health -= @s damage

execute as @s run function core:2dlogic/damage_interceptor/fall_confirm

scoreboard players set @s damage 0

execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s run scoreboard players set @s[type=armor_stand] damage 0

scoreboard players set @s dam_recieved 0

## EXTRA +15 if already existed (COMBO)


## ?? ##
#execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s run scoreboard players add @s[type=armor_stand,scores={impactCooldown=14..}] impactCooldown 15


#execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s run scoreboard players set @s[type=armor_stand,scores={impactCooldown=..0}] impactCooldown 15


#execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run scoreboard players operation @s[type=armor_stand] impactCooldown = @p impactLater

#scoreboard players set @s impactLater 0

