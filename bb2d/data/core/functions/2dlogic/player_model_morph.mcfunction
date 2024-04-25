
scoreboard players remove @s[scores={chr.ult.cd =1..}] chr.ult.cd 1

execute if score @s useCustomHead matches 1 run function core:2dlogic/morph/werewolf_morph
execute if score @s useCustomHead matches 2 run function core:2dlogic/morph/tamer_morph
execute if score @s useCustomHead matches 3 run function core:2dlogic/morph/guru_morph
execute if score @s useCustomHead matches 4 run function core:2dlogic/morph/bull_morph
execute if score @s useCustomHead matches 5 run function core:2dlogic/morph/flag_morph
execute if score @s useCustomHead matches 6 run function core:2dlogic/morph/orc_morph
execute if score @s useCustomHead matches 7 run function core:2dlogic/morph/hana_morph
execute if score @s useCustomHead matches 8 run function core:2dlogic/morph/cg_morph
execute if score @s useCustomHead matches 9 run function core:2dlogic/morph/clock_morph
execute if score @s useCustomHead matches 10 run function core:2dlogic/morph/rana_morph
execute if score @s useCustomHead matches 11 run function core:2dlogic/morph/ghasklle_morph

# CHAPTER 2
execute if score @s useCustomHead matches 12 run function core:2dlogic/morph/devast_morph

# CHAPTER
execute if score @s useCustomHead matches 14 run function core:2dlogic/morph/leo_morph

# CHAPTER AIKIRIA
execute if score @s useCustomHead matches 15 run function core:2dlogic/morph/kaguno_aikiria_morph

execute if score @s useCustomHead matches 1.. run item replace entity @s[type=player] armor.head with minecraft:air

function core:2dlogic/skill_control/petsegrate
execute as @s[type=player] run function core:2dlogic/skill_control/control


