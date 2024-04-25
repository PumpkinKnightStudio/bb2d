bossbar set bb2d:bb.1.global players @a
bossbar set bb2d:bb.2.global players
bossbar set minecraft:faction_spawn players
bossbar set minecraft:the_end players
bossbar set bb2d:bb.3.global players
bossbar set bb2d:bb.4.undefined players
bossbar set bb2d:bb.5 players
bossbar set bb2d:bb.6.left3 players
bossbar set bb2d:bb.6.left2 players
bossbar set bb2d:bb.6.right3 players
bossbar set bb2d:bb.6.right2 players
execute if score .type gameType matches 1 if score .gameState gameControl matches 2.. run function bb2d_jmc:__private__/if_else/49
bossbar set bb2d:bb.3.global players @a
bossbar set bb2d:bb.4.undefined players @a
bossbar set bb2d:bb.5 players @a