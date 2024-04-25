execute as @a run execute store result score @s purchaseItem run clear @s paper{purchase:1} 0
execute as @a[scores={purchaseItem=1}] run function core:2dlogic/mount_shop/sort
