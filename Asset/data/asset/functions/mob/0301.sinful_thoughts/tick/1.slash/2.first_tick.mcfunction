#> asset:mob/0301.sinful_thoughts/tick/1.slash/2.first_tick
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash

# ポーズ
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [6f,346f,0f]
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [200f,60f,270f]
# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0301.sinful_thoughts/tick/move/teleport