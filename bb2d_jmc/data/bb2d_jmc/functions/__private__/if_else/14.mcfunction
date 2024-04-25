tellraw @a[team=right] {"text":"+15 coins from enemy death.","color":"green","bold":true}
scoreboard players add @a[team=right] coins 15
scoreboard players set __if_else__ __variable__ 1