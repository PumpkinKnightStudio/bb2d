
#Assign ID to all playing
execute as @a[scores={playing=1},tag=!assigned_id] at @s run function core:setup/assign_id
