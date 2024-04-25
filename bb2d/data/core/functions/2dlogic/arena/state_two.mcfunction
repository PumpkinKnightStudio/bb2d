

title @a actionbar [{"text":"Please select","color":"#f0f070"},{"text":" Team","color":"#f0f074"},{"text":" |","color":"#f0f070"},{"text":" Class","color":"#f0f074"},{"text":" |","color":"#f0f070"},{"text":" Map","color":"#f0f074"}]

function core:2dlogic/arena/setting/setting_trigger
forceload add 64 -294 2 -224


function core:2dlogic/arena/voting


#execute as @e[type=interaction,tag=map1] if data entity @s interaction run function core:2dlogic/arena/map_select/one
execute as @e[type=interaction,tag=map_selector] run data remove entity @s interaction

