#> asset:mob/0307.brave_knight/tick/event/force_back
#
# 持ち主に戻ってくる
#
# @within function asset:mob/0307.brave_knight/tick/event/attack_mode

# 帰り着くまで攻撃モードにならないようにする
    tag @s add 8J.StopAttack

# ポーズ
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [0f,0f,15f]

# タグ解除
    tag @s remove 8J.AttackMode