#> asset:mob/0284.lexiel/tick/skill/fireball/2.fist_tick
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/fireball/1.fireball


# ポーズ
    tp @s ~ ~ ~ ~-10 ~
    item replace entity @s armor.head with stick{CustomModelData:20292}
    item replace entity @s weapon with stick{CustomModelData:20288}
    data modify entity @s Pose.LeftArm set value [12f,0f,0f]
    data modify entity @s Pose.RightArm set value [50f,189f,304f]