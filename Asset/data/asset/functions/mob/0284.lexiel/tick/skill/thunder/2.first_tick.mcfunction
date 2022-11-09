#> asset:mob/0284.lexiel/tick/skill/thunder/2.first_tick
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/thunder/1.thunder

# ポーズ
    tp @s ~ ~ ~ ~-10 ~
    item replace entity @s armor.head with stick{CustomModelData:20292}
    item replace entity @s weapon with stick{CustomModelData:20288}
    data modify entity @s Pose.LeftArm set value [20f,38f,338f]
    data modify entity @s Pose.RightArm set value [177f,0f,0f]
# 演出
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6