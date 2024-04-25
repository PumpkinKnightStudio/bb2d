scoreboard players set @s switchingItem 3



summon armor_stand ~ ~-5 ~ {NoGravity:1b,Tags:["switcher"]}

execute unless score @s validSwitch matches 1.. run execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{element:2}}]}] run scoreboard players add @s spellID 1

execute unless score @s validSwitch matches 1.. run execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{element:2}}]}] run scoreboard players set @s validSwitch 1
execute unless score @s validSwitch matches 1.. run execute as @a[nbt={Inventory:[{id:"minecraft:paper",Slot:-106b,tag:{element:2}}]}] run scoreboard players set @s validSwitch 2


scoreboard players set @s[scores={spellID=3..}] spellID 1

## PATCH DEFAULT SHIELD WHEN CASTING MAGIC SWITCH
#execute if predicate core:main_shield run item replace entity @s weapon.offhand with shield{CustomModelData:10009}

item replace entity @e[tag=switcher,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.offhand

execute unless score @s magic_cast matches 1.. run item replace entity @e[tag=switcher,sort=nearest,limit=1] weapon.offhand from entity @s weapon.mainhand

execute if score @s shieldSlot matches 1.. run execute if score @s magic_cast matches 1.. run item replace entity @e[tag=switcher,sort=nearest,limit=1] weapon.offhand with shield{CustomModelData:10009}

item replace entity @s weapon.mainhand from entity @e[tag=switcher,sort=nearest,limit=1] weapon.mainhand

###################

item replace entity @s weapon.offhand from entity @e[tag=switcher,sort=nearest,limit=1] weapon.offhand


###################

kill @e[tag=switcher,sort=nearest,limit=1]

execute unless score @s validSwitch matches 1.. run title @s actionbar ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"This item does not support offhand action.","color":"red"}]

execute if predicate core:main_magicbook run function core:spells/magic/spell_des

# PATCH SHIELD DUPE
execute if score @s shieldSlot matches 0 run scoreboard players set @s validSwitch 0

execute if score @s validSwitch matches 1 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Shield","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,element:1,spell_id:4,reduc:180,droppable:1}

scoreboard players set @s validSwitch 0

