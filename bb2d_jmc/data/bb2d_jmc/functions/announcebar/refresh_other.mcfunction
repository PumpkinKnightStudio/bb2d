bossbar set bb2d:bb.1.global players @a
bossbar set bb2d:bb.2.global players @a
execute if score .gameState gameControl matches 1.. run bossbar set bb2d:bb.2.global players
bossbar set minecraft:faction_spawn players
bossbar set minecraft:the_end players
bossbar set bb2d:bb.3.global players
bossbar set bb2d:bb.4.undefined players
bossbar set bb2d:bb.5 players
bossbar set bb2d:bb.6.left3 players
bossbar set bb2d:bb.6.left2 players
bossbar set bb2d:bb.6.right3 players
bossbar set bb2d:bb.6.right2 players
execute if score .type gameType matches ..4 if score .gameState gameControl matches 2.. run function bb2d_jmc:__private__/if_else/48
bossbar set bb2d:bb.3.global players @a
bossbar set bb2d:bb.4.undefined players @a
bossbar set bb2d:bb.5 players @a
execute if score .three left.notifyAB matches 2.. run bossbar set bb2d:bb.6.left3 players @a[team=left]
execute if score .two left.notifyAB matches 2.. run bossbar set bb2d:bb.6.left2 players @a[team=left]
execute if score .three right.notifyAB matches 2.. run bossbar set bb2d:bb.6.right3 players @a[team=right]
execute if score .two right.notifyAB matches 2.. run bossbar set bb2d:bb.6.right2 players @a[team=right]