
execute as @s at @s run effect give @s blindness 2 1 true


execute as @s[team=left] at @s run summon zombie -152 7 -235 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","respawner","left"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 1 run execute as @s[team=left] at @s run summon zombie -152 7 -235 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","left"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:10001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 2 run execute as @s[team=left] at @s run summon zombie -152 7 -235 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","left"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:10002}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 3 run execute as @s[team=left] at @s run summon zombie -152 7 -235 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","left"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 4 run execute as @s[team=left] at @s run summon zombie -152 7 -235 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","left"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:20001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}


execute as @s[team=left] at @s run scoreboard players operation @e[type=zombie,tag=respawner,tag=left,sort=nearest,limit=1] playerID = @s playerID
execute as @s[team=left] at @s run scoreboard players operation @e[type=zombie,tag=falseModel,tag=left,sort=nearest,limit=1] playerID = @s playerID

execute as @s[team=right] at @s run summon zombie -152 7 -329 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","respawner","right"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 1 run execute as @s[team=right] at @s run summon zombie -152 7 -329 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","right"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:10001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 2 run execute as @s[team=right] at @s run summon zombie -152 7 -329 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","right"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:10002}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 3 run execute as @s[team=right] at @s run summon zombie -152 7 -329 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","right"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}
execute if score @s respawnModel matches 4 run execute as @s[team=right] at @s run summon zombie -152 7 -329 {HasVisualFire:0b,OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,Rotation:[-180F,0F],Tags:["unmod","falseModel","right"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b,tag:{CustomModelData:20001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:600,show_particles:0b}]}


execute as @s[team=right] at @s run scoreboard players operation @e[type=zombie,tag=respawner,tag=right,sort=nearest,limit=1] playerID = @s playerID
execute as @s[team=right] at @s run scoreboard players operation @e[type=zombie,tag=falseModel,tag=right,sort=nearest,limit=1] playerID = @s playerID

execute at @s as @e[type=zombie] if score @s playerID = @p playerID run scoreboard players operation @s[type=zombie] facDestination = @p facDestination
execute at @s as @e[type=zombie] if score @s playerID = @p playerID run scoreboard players operation @s[type=zombie] respawnModel = @p respawnModel

execute as @s[team=left] at @s as @e if score @s[tag=respawner] playerID = @p playerID run execute as @s[type=zombie] run function cutscene-1:start
execute as @s[team=left] at @s as @e if score @s[tag=falseModel] playerID = @p playerID run execute as @s[type=zombie] run function cutscene-1:start

execute as @s[team=right] at @s as @e if score @s[tag=respawner] playerID = @p playerID run execute as @s[type=zombie] run function cutscene-2:start
execute as @s[team=right] at @s as @e if score @s[tag=falseModel] playerID = @p playerID run execute as @s[type=zombie] run function cutscene-2:start

execute as @e[tag=unmod] run effect give @s invisibility 100 1 true

execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s at @s run tp @s[tag=falseModel] ~-9 ~ ~
scoreboard players set @s respawning 70
scoreboard players set @s facDestination 0

