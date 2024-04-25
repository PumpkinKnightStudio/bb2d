scoreboard players set @s cast_distance 30
execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/hana/attack/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 2 run function core:spells/morph/hana/uppercut/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 3 run function core:spells/morph/hana/push/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 4 run function core:spells/morph/hana/explode/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 5 run function core:spells/morph/hana/summon/init