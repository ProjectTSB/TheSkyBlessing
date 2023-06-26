#> asset:mob/0284.lexiel/tick/skill/fireball/2.first_tick
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/fireball/1.fireball

# ポーズ
    tp @s ~ ~ ~ ~60 ~
    data modify entity @s Pose.LeftArm set value [342f,217f,0f]
    data modify entity @s Pose.RightArm set value [179f,326f,332f]
    item replace entity @s armor.head with stick{CustomModelData:20292}
    item replace entity @s weapon with stick{CustomModelData:20288}

# 演出
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6