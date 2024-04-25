tellraw @a[team=left] {"text":"+15 coins from enemy death.","color":"green","bold":true}
scoreboard players add @a[team=left] coins 15
scoreboard players set __if_else__ __variable__ 1