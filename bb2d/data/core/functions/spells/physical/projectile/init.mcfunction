
#scoreboard players set @s stopMoveTimer 10

execute if score @s projectile_aim matches 0 run scoreboard players set @s projectile_aim 1

execute if score @s[type=player] projectile_aim matches 2.. run function core:spells/physical/projectile/shoot

execute unless score @s projectile_aim matches 0 run execute unless score @s projectile_aim matches 1.. run scoreboard players set @s projectile_aim 0




execute if score @s projectile_aim matches -1 run execute unless score @s projectile_aim matches 1.. run scoreboard players set @s projectile_aim 0


execute if score @s item_351 matches 0 run clear @s minecraft:carrot_on_a_stick{item:351}