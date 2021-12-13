#> asset:mob/0182.skull_raven/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0182.skull_raven/hurt/1.trigger

#> private
# @private
    #declare score_holder $VectorMagnitude

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 20
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 0.4 0

# 浮遊を自分に付与
    effect give @s levitation 1 8 true

# プレイヤーから離れる
    scoreboard players set $VectorMagnitude Lib 150
    execute facing entity @p[tag=Attacker] eyes rotated ~180 -10 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude