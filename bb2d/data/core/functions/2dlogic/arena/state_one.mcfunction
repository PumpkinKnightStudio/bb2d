
execute if score .confirmed gameType matches 1 run execute if block 62 5 -262 minecraft:lectern{Page:0} run title @a actionbar [{"text":"Please select","color":"#f0f070"},{"text":" Game Mode","color":"#f0f074"}]
execute if score .confirmed gameType matches 1 run execute if score .confirmed gameType matches 0 run execute if block 62 5 -262 minecraft:lectern{Page:1} run title @a actionbar [{"text":"Team Score:","color":"#f0f070"},{"text":" Selected","color":"#f0f074"}]
execute if score .confirmed gameType matches 1 run execute if block 62 5 -262 minecraft:lectern{Page:2} run title @a actionbar [{"text":"Team Death Match:","color":"#f0f070"},{"text":" Selected","color":"#f0f074"}]
execute if score .confirmed gameType matches 1 run execute if block 62 5 -262 minecraft:lectern{Page:3} run title @a actionbar [{"text":"Domination:","color":"#f0f070"},{"text":" Selected","color":"#f0f074"}]
execute if score .confirmed gameType matches 1 run execute if block 62 5 -262 minecraft:lectern{Page:4} run title @a actionbar [{"text":"Infection:","color":"#f0f070"},{"text":" Selected","color":"#f0f074"}]

execute if score .type gameType matches 5 run title @a actionbar {"text":"This Mode is Unavailable","color":"red"}
execute if score .type gameType matches 5 run scoreboard players set .musicTime musicBoard -1

execute if score .confirmed gameType matches 2 run title @a actionbar [{"text":"Please select","color":"#f0f070"},{"text":" Team","color":"#f0f074"},{"text":" |","color":"#f0f070"},{"text":" Class","color":"#f0f074"},{"text":" |","color":"#f0f070"},{"text":" Map","color":"#f0f074"}]


function core:2dlogic/arena/setting/setting_trigger
forceload add 64 -294 2 -224
forceload add -112 -234
forceload add -114 -238
function core:2dlogic/arena/check_gamemode
function core:2dlogic/arena/voting

execute as @e[type=armor_stand,tag=map_selection] at @s run tp @s ~ ~ ~ ~1 ~

execute as @e[type=interaction,tag=map1] on target run tellraw @s [{"text":"Vote: You voted for The City (3)."}]
execute as @e[type=interaction,tag=map1] on target run scoreboard players set @s mapVote 1

execute as @e[type=interaction,tag=map2] on target run tellraw @s [{"text":"Vote: You voted for The Town."}]
execute as @e[type=interaction,tag=map2] on target run scoreboard players set @s mapVote 2

execute as @e[type=interaction,tag=map3] on target run tellraw @s [{"text":"Vote: You voted for Dessert Village."}]
execute as @e[type=interaction,tag=map3] on target run scoreboard players set @s mapVote 3

#execute as @e[type=interaction,tag=map1] if data entity @s interaction run function core:2dlogic/arena/map_select/one
execute as @e[type=interaction,tag=map_selector] run data remove entity @s interaction

execute as @a[team=!right] at @s run execute if block ~ ~-1 ~ minecraft:orange_stained_glass run title @s title {"text":" "}
execute as @a[team=!right] at @s run execute if block ~ ~-1 ~ minecraft:orange_stained_glass run title @s subtitle {"text":"Joined Right Team"}
execute as @a[team=!left] at @s run execute if block ~ ~-1 ~ minecraft:blue_stained_glass run title @s title {"text":" "}
execute as @a[team=!right] at @s run execute if block ~ ~-1 ~ minecraft:blue_stained_glass run title @s subtitle {"text":"Joined Left Team"}
execute as @a at @s run execute if block ~ ~-1 ~ minecraft:orange_stained_glass run team join right @s
execute as @a at @s run execute if block ~ ~-1 ~ minecraft:blue_stained_glass run team join left @s

## STICKMAN
execute as @e[type=interaction,tag=class0] on target run tellraw @s [{"text":"Chosen: The Stickman"}]
execute as @e[type=interaction,tag=class0] on target run scoreboard players set @s classID 0

## MINOTAUR
#execute as @e[type=interaction,tag=class1] on target run tellraw @s [{"text":"Chosen: The Minotaur"}]
#execute as @e[type=interaction,tag=class1] on target run scoreboard players set @s classID 1

## THE GURU
execute as @e[type=interaction,tag=class2] on target run tellraw @s [{"text":"Chosen: The Guru"}]
execute as @e[type=interaction,tag=class2] on target run scoreboard players set @s classID 2
## THE WEREWOLF
execute as @e[type=interaction,tag=class3] on target run tellraw @s [{"text":"Chosen: The Werewolf"}]
execute as @e[type=interaction,tag=class3] on target run scoreboard players set @s classID 3
## THE TAMER
execute as @e[type=interaction,tag=class4] on target run tellraw @s [{"text":"Chosen: The Tamer"}]
execute as @e[type=interaction,tag=class4] on target run scoreboard players set @s classID 4
## THE FLAG
execute as @e[type=interaction,tag=class5] on target run tellraw @s [{"text":"Chosen: The Flag Waver"}]
execute as @e[type=interaction,tag=class5] on target run scoreboard players set @s classID 5

#execute as @e[type=interaction,tag=class6] on target run tellraw @s [{"text":"Chosen: The Orc General"}]
#execute as @e[type=interaction,tag=class6] on target run scoreboard players set @s classID 6

execute as @e[type=interaction,tag=class7] on target run tellraw @s [{"text":"Chosen: The Deer Spirit Caller"}]
execute as @e[type=interaction,tag=class7] on target run scoreboard players set @s classID 7

execute as @e[type=interaction,tag=class8] on target run tellraw @s [{"text":"Chosen: Colonel Supersizzle"}]
execute as @e[type=interaction,tag=class8] on target run scoreboard players set @s classID 8

execute as @e[type=interaction,tag=class9] on target run tellraw @s [{"text":"Chosen: The Clock Maker"}]
execute as @e[type=interaction,tag=class9] on target run scoreboard players set @s classID 9

execute as @e[type=interaction,tag=class10] on target run tellraw @s [{"text":"Chosen: Rana The Frog"}]
execute as @e[type=interaction,tag=class10] on target run scoreboard players set @s classID 10

execute as @e[type=interaction,tag=class12] on target run tellraw @s [{"text":"Chosen: The Fallen Devastator"}]
execute as @e[type=interaction,tag=class12] on target run scoreboard players set @s classID 12

execute as @e[type=interaction,tag=class14] on target run tellraw @s [{"text":"Chosen: Leo"}]
execute as @e[type=interaction,tag=class14] on target run scoreboard players set @s classID 14

execute as @e[type=interaction,tag=class_selector] run data remove entity @s interaction


#item replace entity @a[scores={classID=5}] hotbar.8 with written_book{display:{Name:'{"text":"Flag Waver Morph","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Character Info:","color":"white","italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":" ● Class: ","color":"white","italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Tank ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/ ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Support","color":"green"}]','{"text":" ➵ Passive Abilities:","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ➵ Commanding Presence","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"   ➵ Intimidate nearby enemy","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"    ➵ Inflict 15% slowness","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":""},{"text":"    ➵ Radius: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"4 meters","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Reduce incoming damage by 20%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Reduce walking speed by 30%","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:7,title:"The Flag Waver",author:"Voidwatcher, the Enigma Specter",pages:['{"text":"The Flag Waver is a commanding and regal character in Bridge Brawl 2D, leading her allies with grace and authority. She brandishes a unique weapon, a flag made from a golden spear adorned with her scarf, symbolizing her leadership and determination. "}','{"text":"Draped in ornate armor, she radiates a sense of honor and resilience that motivates those who fight alongside her."}','[{"text":"Swift Banner (Basic Attack): ","bold":true},{"text":"The Flag Waver swings her flag with precision, dealing moderate damage to enemies in front of her. Successful hits have a chance to increase the movement speed of nearby allies for a short duration, inspiring them to engage with swiftness.","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Gale Gust (Area Control Ability): ","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" The Flag Waver waves her flag with a burst of force, creating a gust of wind that pushes enemies in a targeted direction. This ability can disrupt enemy formations, ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"push enemies off ledges, and create opportunities for environmental advantages."}','[{"text":"Inspiring Aura (Support Ability):","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" The Flag Waver radiates an aura of inspiration that bolsters her allies\' morale. Allies within the aura gain increased movement speed and a temporary boost to their attack power. ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"This ability encourages more aggressive playstyle and empowers teammates to seize the initiative."}','[{"text":"Defensive Formation (Protective Ability):","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" The Flag Waver plants her flag in the ground, creating a protective zone where damage received by her and her allies is reduced. ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"This ability encourages allies to gather around her and engage enemies while benefiting from increased durability."}','[{"text":"War Cry of Unity (Ultimate Ability):","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" The Flag Waver raises her flag high, unleashing a powerful war cry that echoes across the battlefield. During her ultimate, all allies receive a substantial boost to their movement speed and a significant reduction in cooldowns for their abilities.","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"This empowering effect lasts for a limited time, allowing the team to coordinate and unleash devastating combos."}','[{"text":"Backstory:","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"The Flag Waver\'s origins lie in a lineage of noble generals who have led their troops to victory across generations. Trained in the art of war and diplomacy, she brings a unique blend of strategic insight ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" and unwavering leadership to the Bridge Brawl tournaments. Guided by her principles of unity and honor, she seeks to inspire her allies to work together and overcome any challenge."}','{"text":"The Flag Waver\'s role as a Support Tank character brings both utility and resilience to Bridge Brawl 2D battles. With her ability to control the battlefield through wind manipulation, increase ally speed,"}','{"text":"and provide protective auras, she becomes an indispensable asset in enabling her team\'s success while also maintaining a stalwart presence in the frontlines.\\n\\n\\n\\n\\n\\n"}']} 1


## CLASS PRE EQUIP

# CLASS 1

## BLOCK DROP

execute as @e[type=item,nbt={Item:{tag:{droppable:-1}}}] run kill @s