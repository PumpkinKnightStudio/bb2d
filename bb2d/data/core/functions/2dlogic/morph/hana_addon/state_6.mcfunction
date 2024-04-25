execute at @s[team=left,scores={lookingDir=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_daura","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}
execute at @s[team=left,scores={lookingDir=2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_daura","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F]}

execute at @s[team=right,scores={lookingDir=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_daura","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}
execute at @s[team=right,scores={lookingDir=2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_daura","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F]}

execute as @e[type=armor_stand,tag=unset,tag=spawn_daura] run function core:2dlogic/morph/hana_addon/state_6s

