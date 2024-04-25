execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/werewolf/punch/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 2 run function core:spells/morph/werewolf/swipe/init
execute if score @s animate matches 0 run execute if score @s spell_id matches 3 run function core:spells/morph/werewolf/spin/init

execute if score @s save_spellid matches 2 run execute if score @s animate matches 6.. run execute if score @s spell_id matches 1 run function core:spells/morph/werewolf/punch/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 5 run function core:spells/morph/werewolf/powerup/init