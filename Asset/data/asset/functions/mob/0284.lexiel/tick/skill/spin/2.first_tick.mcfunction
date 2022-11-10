#> asset:mob/0284.lexiel/tick/skill/spin/2.first_tick
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/spin/1.spin


# モデルの向き
    # 頭下向ける
        execute as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ 30
    # 頭のモデルのデータに移す
        execute as @e[type=armor_stand,tag=7W.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# ポーズ
    tp @s ~ ~ ~ ~-40 ~
    item replace entity @s armor.head with stick{CustomModelData:20290}
    item replace entity @s weapon with stick{CustomModelData:20287}
    data modify entity @s Pose.LeftArm set value [12f,0f,0f]
    data modify entity @s Pose.RightArm set value [50f,189f,304f]
# 演出
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6