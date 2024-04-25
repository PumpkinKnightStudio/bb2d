execute as @a[team=left] run execute if predicate core:left_score run scoreboard players add .leftScore gameDatabase 1

execute as @a[team=left] run execute if predicate core:left_score run title @a title [{"text":"Left Scores!"}]

execute as @a[team=left] run execute if predicate core:left_score run function core:2dlogic/arena/reset_pos

execute as @a[team=right] run execute if predicate core:right_score run scoreboard players add .rightScore gameDatabase 1
execute as @a[team=right] run execute if predicate core:right_score run title @a title [{"text":"Right Scores!"}]
execute as @a[team=right] run execute if predicate core:right_score run function core:2dlogic/arena/reset_pos

