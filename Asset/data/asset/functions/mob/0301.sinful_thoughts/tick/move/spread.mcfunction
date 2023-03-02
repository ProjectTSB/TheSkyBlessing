#> asset:mob/0301.sinful_thoughts/tick/move/spread
#
# 拡散してテレポートするやつ
#
# @within function asset:mob/0301.sinful_thoughts/tick/**

# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[4d,4d],[0d,0d],[4d,4d]]
# タグをつける
    tag @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 8D.ArmorStandThis
# 拡散する
    execute at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function lib:spread_entity/
# 拡散したあとブロックがあるならもう一回TP
    execute at @s unless block ~ ~ ~ #lib:no_collision at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function asset:mob/0301.sinful_thoughts/tick/move/simple_spread
    execute at @s unless block ~ ~ ~ #lib:no_collision at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function asset:mob/0301.sinful_thoughts/tick/move/simple_spread
    execute at @s unless block ~ ~ ~ #lib:no_collision at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function asset:mob/0301.sinful_thoughts/tick/move/simple_spread
    execute at @s unless block ~ ~ ~ #lib:no_collision at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function asset:mob/0301.sinful_thoughts/tick/move/simple_spread
    execute at @s unless block ~ ~ ~ #lib:no_collision at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function asset:mob/0301.sinful_thoughts/tick/move/simple_spread
# アマスタを持ってくる
    tp @e[type=armor_stand,tag=8D.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..100] remove 8D.ArmorStandThis