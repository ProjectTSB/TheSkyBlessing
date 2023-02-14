#> asset:mob/0307.brave_knight/tick/event/dash
#
# 敵発見時のダッシュ
#
# @within function asset:mob/0307.brave_knight/tick/2.tick

# ポーズ
    data modify entity @s Pose.LeftArm set value [75f,0f,-45f]
    data modify entity @s Pose.RightArm set value [75f,0f,45f]

# サウンド
    playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ 1 2
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 2