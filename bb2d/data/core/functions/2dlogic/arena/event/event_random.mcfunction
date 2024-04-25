execute if score .eventRec arenaTime <= .eventTrig arenaTime run scoreboard players add .eventID event 1

execute if score .eventID event matches 2.. run scoreboard players set .eventID event 1

execute if score .eventCounter arenaTime matches 1.. run function core:2dlogic/arena/event/event_dir