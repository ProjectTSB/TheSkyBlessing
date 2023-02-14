#> asset:mob/0307.brave_knight/tick/event/turn_off_attackmode
#
# 攻撃モード解除
#
# @within function asset:mob/0307.brave_knight/tick/event/attack_mode

# ポーズ
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [0f,0f,15f]

# タグ解除
    tag @s remove 8J.AttackMode

# サウンド
    playsound minecraft:entity.allay.ambient_with_item neutral @a ~ ~ ~ 1 2
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 2