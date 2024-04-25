
## TEAM LEFT
execute if score .team aiDatabase matches 1 run summon wandering_trader -161 2 -239 {CustomNameVisible:1b,Tags:["aiMob","unset","left","damagable_entity","have.head"]}
execute if score .team aiDatabase matches 2 run summon wandering_trader -161 2 -317 {CustomNameVisible:1b,Tags:["aiMob","unset","right","damagable_entity","have.head"]}


scoreboard players operation .currentID aiDatabase = .counter playerID
scoreboard players operation .currentID aiDatabase += .one numValue
scoreboard players operation @e[tag=unset,tag=aiMob] useCustomHead = .currentID aiDatabase
scoreboard players operation @e[tag=unset,tag=aiMob] playerID = .currentID aiDatabase
scoreboard players set @e[tag=unset,tag=aiMob] impactCooldown 0
tag @e[tag=aiMob] remove unset