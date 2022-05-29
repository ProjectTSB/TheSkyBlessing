#> asset:mob/0265.dark_familiar/summon/init
#
#
#
# @within function asset:mob/0265.dark_familiar/summon/2.summon

# この世界に存在できる時間
    scoreboard players set @s 7D.LifeTime 200

# 降りてくる
    execute at @s run tp @s ~ ~100 ~

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~-45

# パーティクル
    execute at @s anchored eyes positioned ^ ^ ^ run particle poof ~ ~-0.3 ~ 0 0 0 0.1 10