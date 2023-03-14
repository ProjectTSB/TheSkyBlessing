#> asset:mob/0185.tutankhamen/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0185.tutankhamen/death/1.trigger

# 演出
    playsound entity.skeleton.hurt hostile @a ~ ~ ~ 2 0.5 0
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 0 0
    particle witch ~ ~1.2 ~ 0.6 0.4 0.6 1 200 normal @a

# ボスドロ
    data modify storage api: Argument.ID set value 928
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id