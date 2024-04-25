execute if score @s useCustomHead matches 1 run execute if score @s shieldOn matches 7.. run title @s actionbar [{"text":"Blocking with a shield","color":"green"}]
execute if score @s useCustomHead matches 3..7 run execute if score @s shieldOn matches 7.. run title @s actionbar [{"text":"Blocking with a shield","color":"green"}]
#execute if score @s useCustomHead matches 14 run execute if score @s shieldOn matches 7.. run title @s actionbar [{"text":"Absorbing Damage with a shield","color":"green"}]

execute if score @s useCustomHead matches 8 run execute if score @s chr.cg.blockTimer matches 1..25 run title @s actionbar [{"text":"Parrying with a shield","color":"green"}]
execute if score @s useCustomHead matches 8 run execute if score @s chr.cg.blockTimer matches 25..26 run title @s actionbar [{"text":"Failed to Parry with a shield","color":"red"}]
execute if score @s useCustomHead matches 8 run execute if score @s chr.cg.blockTimer matches 1.. run execute if score @s shieldOn matches 0 run title @s actionbar [{"text":"","color":"red"}]

execute if score @s useCustomHead matches 2 run execute if score @s chr.cg.blockTimer matches 1..25 run title @s actionbar [{"text":"Parrying with a shield","color":"green"}]
execute if score @s useCustomHead matches 2 run execute if score @s chr.cg.blockTimer matches 25..26 run title @s actionbar [{"text":"Failed to Parry with a shield","color":"red"}]
execute if score @s useCustomHead matches 2 run execute if score @s chr.cg.blockTimer matches 1.. run execute if score @s shieldOn matches 0 run title @s actionbar [{"text":"","color":"red"}]


execute if score @s sword_swing matches 12..29 run function core:2dlogic/message_core/sword_charge

execute if score @s sword_swing matches 30.. run title @s actionbar [{"text":"Attack: Charge Max","color":"green"}]

execute if score @s bow_aim matches 6..12 run title @s actionbar [{"text":"Attack: Charge - Stage I","color":"green"}]
execute if score @s bow_aim matches 13..25 run title @s actionbar [{"text":"Attack: Charge - Stage II","color":"green"}]
execute if score @s bow_aim matches 26.. run title @s actionbar [{"text":"Attack: Charge - Stage III (Max)","color":"green"}]

#execute if score @s buildingSwitch matches 2 run title @s actionbar [{"text":"Building Mode: Active","color":"white"}]



#execute unless predicate core:offhand_item run title @s actionbar ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"This item does not support offhand action.","color":"red"}]

