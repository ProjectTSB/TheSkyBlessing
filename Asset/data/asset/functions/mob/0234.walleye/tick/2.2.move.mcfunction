#> asset:mob/0234.walleye/tick/2.2.move
#
# @within
#   function asset:mob/0234.walleye/tick/2.tick

# 向いてる方向に向かって移動、ブロックにめり込むかエンティティが半径1ブロック以内に入ったら爆発
tp @s ^ ^ ^0.3
execute at @s unless block ~ ~ ~ #lib:no_collision run scoreboard players set @s 6i.Phase 2
execute at @s if entity @e[tag=Friend,distance=..1] run scoreboard players set @s 6i.Phase 2