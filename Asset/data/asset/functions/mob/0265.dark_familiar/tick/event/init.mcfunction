#> asset:mob/0265.dark_familiar/tick/event/init
#
#
#
# @within function asset:mob/0265.dark_familiar/tick/2.tick

# この世界に存在できる時間
    scoreboard players set @s 7D.LifeTime 200

# 降りてくる
    execute at @s run tp @s ~ ~100 ~

# プレイヤーの方を向く
    execute as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# パーティクル
    execute at @s anchored eyes positioned ^ ^ ^ run particle poof ~ ~-0.3 ~ 0 0 0 0.1 10

# 装備を着る
    item replace entity @s armor.head with stick{CustomModelData:20177}

# タグ付与
    tag @s add 7D.Init