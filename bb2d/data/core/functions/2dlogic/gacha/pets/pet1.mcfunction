summon armor_stand 253 6.5 -249 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["pets_spawner"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:10101}}],CustomName:'{"text":"Spirit of Speed","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute as @a run execute if score @s petsTransID = .transID petsTransID run execute as @s run function core:2dlogic/gacha/pets/pet1_sort