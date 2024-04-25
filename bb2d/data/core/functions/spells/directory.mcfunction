scoreboard players set @s cast 0
execute store result score @s element run data get entity @s SelectedItem.tag.element
execute store result score @s spell_id run data get entity @s SelectedItem.tag.spell_id

scoreboard players operation @s mem_element = @s element
scoreboard players operation @s mem_spellid = @s spell_id

execute if score @s element matches 1 run function core:spells/physical/directory
execute if score @s element matches 2 run function core:spells/magic/directory
execute if score @s element matches 3 run function core:spells/morph/werewolf/directory
execute if score @s element matches 4 run function core:spells/morph/tamer/directory
execute if score @s element matches 5 run function core:spells/morph/guru/directory
execute if score @s element matches 6 run function core:spells/morph/minotaur/directory
execute if score @s element matches 7 run function core:spells/morph/flag/directory
execute if score @s element matches 8 run function core:spells/morph/orc/directory
execute if score @s element matches 9 run function core:spells/morph/hana/directory
execute if score @s element matches 10 run function core:spells/morph/cg/directory
execute if score @s element matches 11 run function core:spells/morph/clock/directory
execute if score @s element matches 12 run function core:spells/morph/rana/directory
execute if score @s element matches 13 run function core:spells/morph/ghasklle/directory
execute if score @s element matches 14 run function core:spells/morph/devast/directory
execute if score @s element matches 15 run function core:spells/morph/leo/directory
execute if score @s element matches 16 run function core:spells/morph/kaguno1/directory

scoreboard players operation @s save_spellid = @s spell_id

execute store result score @s block run data get entity @s SelectedItem.tag.block
execute store result score @s break run data get entity @s SelectedItem.tag.break

execute if predicate core:spawn_left run tellraw @s[scores={block=1..}] ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Building Mode is disabled in the spawn zone.","color":"yellow"},{"text":" (Building)","color":"white"}]

execute if predicate core:spawn_left run tellraw @s[scores={break=1..}] ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Building Mode is disabled in the spawn zone.","color":"yellow"},{"text":" (Breaking)","color":"white"}]

execute if predicate core:spawn_right run tellraw @s[scores={block=1..}] ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Building Mode is disabled in the spawn zone.","color":"yellow"},{"text":" (Building)","color":"white"}]

execute if predicate core:spawn_right run tellraw @s[scores={break=1..}] ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Building Mode is disabled in the spawn zone.","color":"yellow"},{"text":" (Breaking)","color":"white"}]

execute if score @s buildStandby matches 1 run execute if score @s buildingSwitch matches 0 run scoreboard players set @s buildingSwitch 1

execute if score @s buildingSwitch matches 2 run function core:spells/building/directory

execute if score @s buildingSwitch matches 2 run execute if score @s break matches 1.. run function core:spells/breaking/directory



execute store result score @s voiceAct run loot spawn 320 1 -246 loot core:voice_activate
execute store result score @s voiceID run loot spawn 320 1 -246 loot core:voice_random



execute if score @s voiceID = @s antiVoiceDup run scoreboard players set @s[scores={voiceID=3}] voiceID 0

execute if score @s voiceID = @s antiVoiceDup run scoreboard players add @s[scores={voiceID=1..2}] voiceID 1

execute if score @s voiceID matches 0 run scoreboard players set @s voiceID 1

scoreboard players operation @s antiVoiceDup = @s voiceID

execute if score @s useCustomHead matches 14 run scoreboard players set @s voiceAct 1
execute if score @s voiceAct matches 1 run function core:voices/directory