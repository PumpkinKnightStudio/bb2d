
execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/clock/attack/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 2 run function core:spells/morph/hana/uppercut/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 3 run function core:spells/morph/clock/loop/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 4 run function core:spells/morph/clock/place/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 5 run function core:spells/morph/clock/ult/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 8 run execute if score @s clockMaker.timer.tp matches 2.. run function core:spells/morph/clock/return/init