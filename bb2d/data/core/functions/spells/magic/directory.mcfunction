execute unless score @s spellMsg matches 1.. run execute if score @s magic_cast matches 2.. run function core:spells/magic/spell_des

execute if score @s prev_SpellUsed = @s spellID run scoreboard players set @s[scores={spellMsg=0}] spellMsg 240
execute unless score @s prev_SpellUsed = @s spellID run scoreboard players set @s spellMsg 0
scoreboard players operation @s prev_SpellUsed = @s spellID



execute if score @s spell_id matches 1 run execute if score @s spellID matches 1 run function core:spells/magic/laser/init
execute if score @s spell_id matches 1 run execute if score @s spellID matches 2 run function core:spells/magic/rescue/init


