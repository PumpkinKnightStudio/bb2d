scoreboard players add @e[tag=temp_message] temp_message 1
scoreboard players add @e[tag=stunt_message] temp_message 1

kill @e[tag=temp_message,scores={temp_message=20}]

kill @e[tag=stunt_message,scores={temp_message=2}]

function core:2dlogic/damage_interceptor/stunt