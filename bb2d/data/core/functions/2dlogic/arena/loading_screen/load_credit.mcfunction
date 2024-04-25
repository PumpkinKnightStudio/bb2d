effect give @a blindness 2 2 true


execute if score .screenTime loadingScreen matches 1.. run stopsound @a record minecraft:game.selection
execute if score .screenTime loadingScreen matches 10 run execute as @a at @s run playsound minecraft:game.hall record @s ~ ~ ~ 1 1

#execute if score .screenTime loadingScreen matches 1 run title @a times 10 30 10
#execute if score .screenTime loadingScreen matches 150 run title @a times 10 30 10
#execute if score .screenTime loadingScreen matches 181 run title @a times 10 20 10

execute if score .screenTime loadingScreen matches 1..50 run title @a actionbar {"text":"This screen will only play on the first time setup","bold":true,"color":"gray"}

execute if score .screenTime loadingScreen matches 51 run title @a title {"text":"Pumpkin Knight Studio","color":"gold"}
execute if score .screenTime loadingScreen matches 81 run title @a title {"text":"Present","color":"#f0f07c"}
execute if score .screenTime loadingScreen matches 121 run title @a title [{"text":"Bridge Brawl","color":"#f0f080"},{"text":" 2D","color":"#f0f084"}]
execute if score .screenTime loadingScreen matches 121 run title @a subtitle [{"text":"Bridge The Gap With Brawl","color":"#f0f080"}]

execute if score .screenTime loadingScreen matches 181 run title @a title {"text":"Powered by","color":"#f0f074"}
execute if score .screenTime loadingScreen matches 181 run title @a subtitle {"text":"","color":"white"}

execute if score .screenTime loadingScreen matches 201 run title @a title {"text":" 2D Engine","color":"white"}
execute if score .screenTime loadingScreen matches 201 run title @a subtitle {"text":"by PKS Team","color":"white"}

execute if score .screenTime loadingScreen matches 241 run title @a title {"text":"Dom's Nexus","color":"white"}
execute if score .screenTime loadingScreen matches 241 run title @a subtitle {"text":"by Dominexis","color":"white"}

execute if score .screenTime loadingScreen matches 281 run title @a title {"text":"Obj-MC","color":"white"}
execute if score .screenTime loadingScreen matches 281 run title @a subtitle {"text":"by Godlander","color":"white"}

execute if score .screenTime loadingScreen matches 321 run title @a title {"text":"Very Cool Text Effect","color":"white"}
execute if score .screenTime loadingScreen matches 321 run title @a subtitle {"text":"by Spheya","color":"white"}

execute if score .screenTime loadingScreen matches 361 run title @a title {"text":"Model Creator","color":"white"}
execute if score .screenTime loadingScreen matches 361 run title @a subtitle {"text":"ZeroDawnie","color":"white"}

execute if score .screenTime loadingScreen matches 401 run title @a title {"text":"Model Creator","color":"white"}
execute if score .screenTime loadingScreen matches 401 run title @a subtitle {"text":"Little Room Dev","color":"white"}

execute if score .screenTime loadingScreen matches 441 run title @a title {"text":"Model Creator","color":"white"}
execute if score .screenTime loadingScreen matches 441 run title @a subtitle {"text":"ModelBlox & EliteCreatures","color":"white"}

execute if score .screenTime loadingScreen matches 481 run title @a title {"text":"Model Creator","color":"white"}
execute if score .screenTime loadingScreen matches 481 run title @a subtitle {"text":"Taro Taro","color":"white"}

execute if score .screenTime loadingScreen matches 521 run title @a title {"text":"Game Sounds & Effects","color":"white"}
execute if score .screenTime loadingScreen matches 521 run title @a subtitle {"text":"FreeSound.org","color":"white"}

execute if score .screenTime loadingScreen matches 561 run title @a title {"text":"Game Music License","color":"white"}
execute if score .screenTime loadingScreen matches 561 run title @a subtitle {"text":"W.O.W Sound","color":"white"}

execute if score .screenTime loadingScreen matches 601 run title @a title {"text":"Royalty Sounds Effects","color":"white"}
execute if score .screenTime loadingScreen matches 601 run title @a subtitle {"text":"Pixabay","color":"white"}

execute if score .screenTime loadingScreen matches 641 run title @a title {"text":"Texture Assets","color":"white"}
execute if score .screenTime loadingScreen matches 641 run title @a subtitle {"text":"TheSmashEffect","color":"white"}

execute if score .screenTime loadingScreen matches 681 run title @a title {"text":"Map and Enviroment","color":"white"}
execute if score .screenTime loadingScreen matches 681 run title @a subtitle {"text":"Special Thanks: BlueNerd","color":"white"}

execute if score .screenTime loadingScreen matches 721.. run stopsound @a record minecraft:game.hall
execute if score .screenTime loadingScreen matches 721 run title @a subtitle {"text":"","color":"white"}
execute if score .screenTime loadingScreen matches 721.. run scoreboard players set .screenID loadingScreen 2
execute if score .screenTime loadingScreen matches 721.. run scoreboard players set .screenTime loadingScreen 1