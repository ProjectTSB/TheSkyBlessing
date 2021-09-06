#> asset:mob/0108.necromancer/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0108.necromancer/hurt/1.trigger

# 演出
    particle witch ~ ~1.2 ~ 0.4 0.3 0.4 0 20 normal @a
    particle dragon_breath ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    playsound entity.enderman.teleport master @a ~ ~ ~ 1 1 0

# ワープ
    function asset:mob/0108.necromancer/teleport_process