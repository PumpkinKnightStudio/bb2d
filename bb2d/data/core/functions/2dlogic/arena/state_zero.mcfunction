
forceload remove 64 -294 2 -224

scoreboard players set .screenTime loadingScreen 0

scoreboard players add .mapCID mapSelection 1
scoreboard players operation .mapID mapSelection = .mapCID mapSelection
scoreboard players operation .mapID mapSelection += .mapLimiter mapSelection
execute if score .mapID mapSelection >= .mapMaxID mapSelection run scoreboard players set .mapCID mapSelection 1

execute if block 237 6 -244 minecraft:stone_button[powered=true] run scoreboard players set .timer gameStartTimer 1
execute if block 237 6 -244 minecraft:stone_button[powered=true] run setblock 237 6 -244 minecraft:stone_button[face=floor]

execute as @a run function core:2dlogic/gacha/load_sequence

execute as @a[x=320,y=-7,z=-259,distance=..15] at @s run function core:2dlogic/arena/state_zero_apply

execute as @a run function core:menu/run
#scoreboard players set .mapMaxID mapSelection <total + map (starting at 3)>
item replace entity @a inventory.25 with player_head{display:{Name:'{"text":"Golds","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isGold:1,SkullOwner:{Id:[I;1680551348,373902540,-1126215918,-61781266],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE3N2E5NGUyYmQwOGJiZDgzOTQ0NjU4YjM0MjAyYjY5YWMzNmMyOGE4NmQyOThjZmNjMDQ0ZWYyOGIzMDlkYiJ9fX0="}]}}} 1

item replace entity @a hotbar.8 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1
item replace entity @a hotbar.7 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1
item replace entity @a hotbar.6 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1
item replace entity @a hotbar.5 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1
item replace entity @a hotbar.4 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1
item replace entity @a hotbar.3 with barrier{display:{Name:'{"text":"Blocked Slot","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 1

execute as @a run function core:2dlogic/coor

function core:2dlogic/voucher/check_buy
function core:2dlogic/mount_shop/check_buy
function core:2dlogic/arena/setting/setting_trigger

execute as @a run execute if score @s joinedTime matches 1..800 run scoreboard players add @s joinedTime 1
execute as @a run execute if score @s joinedTime matches 1..150 run effect give @s invisibility 2 1 true
execute as @a run execute if score @s joinedTime matches 100 run effect give @s blindness 2 1 true
execute as @a run execute if score @s joinedTime matches 30 run tellraw @s {"text":"???: Wake up!"}
execute as @a run execute if score @s joinedTime matches 50 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.01568627450980392156862745098 1 0 force @s
execute as @a run execute if score @s joinedTime matches 30 run bossbar set bb2d:bb.1.global players @s
#execute as @a run execute if score @s joinedTime matches 40 run tellraw @s [{"text":"Attention: Please make sure to play on MC-Java 1.20.4 & Use provided resourcepack."}]
execute as @a run execute if score @s joinedTime matches 200 run function bb2d_jmc:announcebar/refresh_other
execute as @a run execute if score @s joinedTime matches 200 run tellraw @s [{"text":"Welcome to BridgeBrawl 2D x Protoria."}]
execute as @a run execute if score @s joinedTime matches 250 run tellraw @s [{"text":"Chapter II: Road to Elysium (v.1.1.0)"}]
execute as @a run execute if score @s joinedTime matches 350 run tellraw @s [{"text":"Attention: Copyrighted Resource Pack Assets","bold":true}]
execute as @a run execute if score @s joinedTime matches 400 run tellraw @s {"text":" Please be aware that all resourcepack assets used in this BridgeBrawl 2D are copyrighted by their respective owners. These assets include but are not limited to textures, sounds, and visual elements.","color":"gray"}
execute as @a run execute if score @s joinedTime matches 490 run function core:2dlogic/arena/login_message
execute as @a run execute if score @s joinedTime matches 560 run tellraw @s [" ",{"text":"Dom's Nexus","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"},"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" on ","color":"gray"},{"text":"GitHub","color":"blue"}]}}," ",{"text":" Updated by KelloVera ","color":"gray"}]
execute as @a run execute if score @s joinedTime matches 148 run effect give @s blindness 1 1 true
execute as @a run execute if score @s joinedTime matches 150 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0 1 0 force @s
execute as @a run execute store result score @s invBarrierAmount run clear @s barrier 0
execute as @a if score @s invBarrierAmount matches 7.. run clear @s barrier
execute as @a run execute store result score @s inv.goldHolder run clear @s minecraft:player_head{isGold:1} 0
execute as @a if score @s inv.goldHolder matches 2.. run clear @s player_head{isGold:1}


execute if score .timer gameStartTimer matches 1..300 run scoreboard players add .timer gameStartTimer 1
execute if score .timer gameStartTimer matches 1..300 run effect give @a invisibility 1 1 true
execute if score .timer gameStartTimer matches 5 run execute as @e[tag=guider] run function cutscene-102:start
execute if score .timer gameStartTimer matches 2 run kill @e[tag=statue.leo]
execute if score .timer gameStartTimer matches 2 run team modify lobby collisionRule never
execute if score .timer gameStartTimer matches 3 run execute as @a run function cutscene-104:start
execute if score .timer gameStartTimer matches 5 run summon armor_stand 217 5 -271 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["guider.leo"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:800602}}],CustomName:'{"text":"Leo","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute if score .timer gameStartTimer matches 10 run execute as @e[tag=guider.leo] run function cutscene-105:start
execute if score .timer gameStartTimer matches 190 run execute as @e[tag=guider.leo] run data merge entity @e[type=armor_stand,limit=1,tag=guider.leo] {ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:800601}}]}

execute if score .timer gameStartTimer matches 250 run effect give @a blindness 3 1 true
execute if score .timer gameStartTimer matches 260 run function core:2dlogic/arena/stage_one_apply
execute if score .timer gameStartTimer matches 300 run kill @e[tag=guider.leo]
