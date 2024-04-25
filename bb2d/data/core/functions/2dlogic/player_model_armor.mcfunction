execute unless score @s switchingItem matches 1.. run item replace entity @s weapon.mainhand from entity @p weapon.mainhand
execute unless score @s switchingItem matches 1.. run item replace entity @s weapon.offhand from entity @p weapon.offhand
execute unless score @s switchingItem matches 1.. run item replace entity @s armor.chest from entity @p armor.chest
execute unless score @s switchingItem matches 1.. run item replace entity @s armor.legs from entity @p armor.legs
execute unless score @s switchingItem matches 1.. run item replace entity @s armor.feet from entity @p armor.feet
execute if score @s useCustomHead matches 0 run item replace entity @s[type=armor_stand] armor.head from entity @p armor.head


execute if score @s useCustomHead matches 1.. run execute if score @s holdingItemID matches 0 run item replace entity @s[type=armor_stand] weapon.mainhand with minecraft:air
execute if score @s holdingItemID matches 1.. run item replace entity @s weapon.mainhand from entity @p weapon.mainhand