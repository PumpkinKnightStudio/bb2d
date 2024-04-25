scoreboard players add @s gold 40
tellraw @s {"text":"You recieved 40 golds from winning."}

## CHALLENGES ####################

## CHAPTER 2

## No Death as Devastator
execute as @a run execute if score @s[advancements={core:chapter_two_quest/devast_lead_victory=false}] useCustomHead matches 12 run function core:2dlogic/arena/reward_one
execute as @a run execute if score @s[advancements={core:chapter_two_quest/devast_lead_victory=false}] useCustomHead matches 12 run advancement grant @s only core:chapter_two_quest/devast_lead_victory

