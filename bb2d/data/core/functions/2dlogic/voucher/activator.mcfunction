scoreboard players set @s voucher_cast 0

execute store result score @s voucher_id run data get entity @s SelectedItem.tag.voucherID

execute if score .activator gachaActive matches 0 run execute if score @s voucher_id matches 1 run scoreboard players set @s buyingPets 1
execute if score .activator gachaActive matches 0 run execute if score @s voucher_id matches 1 run clear @s carrot_on_a_stick{voucherID:1} 1
execute if score .activator gachaActive matches 0 run execute if score @s voucher_id matches 1 run scoreboard players set .activator gachaActive 1

scoreboard players set @s voucher_id 0