#> asset:mob/0234.walleye/tick/2.2.move
#
# @within
#   function asset:mob/0234.walleye/tick/2.tick

# 向いてる方向に向かって移動、ブロックにめり込むorエンティティが半径1ブロック以内に入るor奈落に行くで爆発
    execute at @s run tp @s ^ ^ ^0.5
    execute at @s run tp @s ^ ^ ^0.5
    execute at @s run tp @s ^ ^ ^0.5
    execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^-1 run particle poof ~ ~ ~ 0 0 0 0.005 1
    execute at @s unless block ~ ~ ~ #lib:no_collision run scoreboard players set @s 6i.Phase 2
    execute at @s if entity @e[tag=Friend,distance=..1] run scoreboard players set @s 6i.Phase 2
    execute positioned ~ -64 ~ if entity @s[dy=-128] run scoreboard players set @s 6i.Phase 2