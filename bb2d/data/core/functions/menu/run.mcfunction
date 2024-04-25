execute store result score @s menuItem run clear @s #core:all_items{isMenu:1} 0
execute store result score @s ordering run clear @s #core:all_items{ordering:1} 0


## TRIGER PAGE LOAD FIRST THEN CHECK MISSING SLOT LATER

execute unless score @s playerPage = @s currentPage run scoreboard players set @s currentPage -1

execute if score @s menuItem matches 1.. run scoreboard players set @s currentPage -1
execute if score @s ordering matches 1 run scoreboard players set @s currentPage -2


execute if score @s menuItem matches 1.. run function core:menu/dir
execute if score @s currentPage matches -1 run function core:menu/reset

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 0 run function core:menu/page/page0
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 1 run function core:menu/page/page1
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 2 run function core:menu/page/page2
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 3 run function core:menu/page/page3
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 4 run function core:menu/page/page4
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 5 run function core:menu/page/page5
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 6 run function core:menu/page/page6

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 7 run function core:menu/page/page7

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 8 run function core:menu/page/page8

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 9 run function core:menu/page/page9

execute if score @s playerPage matches 10 run function core:menu/page/page10

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 11 run function core:menu/page/page11

execute if score @s playerPage matches 12 run function core:menu/page/page12

execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 14 run function core:menu/page/page14
execute if score @s currentPage matches -2..-1 run execute if score @s playerPage matches 15 run function core:menu/page/page15

execute if score @s playerPage matches 1..9 run loot replace entity @s enderchest.18 loot core:coins

clear @s minecraft:player_head{delete:1}
execute if score @s menuItem matches 1.. run clear @s #core:all_items{isMenu:1}
