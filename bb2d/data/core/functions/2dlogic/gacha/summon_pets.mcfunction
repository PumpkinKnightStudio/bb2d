execute if score .num randomPets matches 1 run function core:2dlogic/gacha/pets/pet1

execute if score .num randomPets matches 2 run function core:2dlogic/gacha/pets/pet2
execute if score .num randomPets matches 3 run function core:2dlogic/gacha/pets/pet2
execute if score .num randomPets matches 4 run function core:2dlogic/gacha/pets/pet1



execute if score .num randomPets matches 5.. run execute as @a run execute if score @s petsTransID = .transID petsTransID run execute as @s run function core:2dlogic/gacha/pets/noprice
execute if score .num randomPets matches 0 run execute as @a run execute if score @s petsTransID = .transID petsTransID run execute as @s run function core:2dlogic/gacha/pets/noprice