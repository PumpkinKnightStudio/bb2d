execute if entity @s[advancements={core:potion=true}] run scoreboard players set @s drinkingPotion 2
execute if entity @s[advancements={core:potion=false}] run scoreboard players remove @s[scores={drinkingPotion=1..}] drinkingPotion 1

execute if entity @s[advancements={core:potion=true}] run advancement revoke @s only core:potion
