execute if score @s spellID matches 1 run tellraw @s [{"text":"Spell Description: Shooting a laser beam.","color":"green"}]

execute if score @s spellID matches 2 run tellraw @s [{"text":"Spell Description: Saving any players that are falling off the stage. (Your team only)","color":"green"}]

execute if score @s spellID matches 2 run title @s actionbar [{"text":"Casting: Aetherial Salvage","color":"green"}]

execute if score @s spellID matches 1 run title @s actionbar [{"text":"Casting: Luminos Ray","color":"green"}]