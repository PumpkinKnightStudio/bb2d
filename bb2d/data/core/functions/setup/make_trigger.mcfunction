
execute as @r[scores={playing=1}] at @s run function core:setup/make_self

execute if entity @a[scores={playing=1}] run function core:setup/make_trigger