execute as @a run execute store result score @s buyingItem run clear @s paper{buying:1} 0
execute as @a[scores={buyingItem=1}] run function core:2dlogic/voucher/sort

execute as @a[scores={voucher_cast=1..}] run function core:2dlogic/voucher/activator