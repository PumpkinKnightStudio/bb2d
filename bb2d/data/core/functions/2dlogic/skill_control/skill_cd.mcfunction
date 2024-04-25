scoreboard players set @s[scores={skillCDRedux=5..}] skillCDRedux 5

## THE FLAG
scoreboard players operation @s[scores={a.WOC.cd=5..}] a.WOC.cd -= @s skillCDRedux
scoreboard players operation @s[scores={a.WOR.cd=5..}] a.WOR.cd -= @s skillCDRedux


## THE MINOTAUR
scoreboard players operation @s[scores={a.bull.roar.cd=5..}] a.bull.roar.cd -= @s skillCDRedux
scoreboard players operation @s[scores={a.bull.push.cd=5..}] a.bull.push.cd -= @s skillCDRedux


## THE ORC
scoreboard players operation @s[scores={atk.orc.cd =5..}] atk.orc.cd -= @s skillCDRedux


## HANA

scoreboard players operation @s[scores={hana.gr.cd =5..}] hana.gr.cd -= @s skillCDRedux

## NEW SYSTEM ALL CHARACTER

scoreboard players operation @s[scores={chr.abi3.cd =5..}] chr.abi3.cd -= @s skillCDRedux
scoreboard players operation @s[scores={chr.abi4.cd =5..}] chr.abi4.cd -= @s skillCDRedux
scoreboard players operation @s[scores={chr.abi5.cd =5..}] chr.abi5.cd -= @s skillCDRedux

# ULTIMATE
scoreboard players operation @s[scores={chr.ult.cd =5..}] chr.ult.cd -= @s skillCDRedux