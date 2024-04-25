scoreboard players operation @s swordChargePercent = @s sword_swing
scoreboard players operation @s swordChargePercent *= .percent swordChargePercent
scoreboard players operation @s swordChargePercent /= .max swordChargePercent


title @s actionbar [{"text":"Attack: Charging ","color":"green"},{"score":{"name":"@s","objective":"swordChargePercent"},"color":"yellow"},{"text":" %","color":"yellow"}]