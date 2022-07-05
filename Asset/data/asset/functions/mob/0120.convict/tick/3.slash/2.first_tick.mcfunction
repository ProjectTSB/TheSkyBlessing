#> asset:mob/0120.convict/tick/3.slash/2.first_tick
#
#
#
# @within function asset:mob/0120.convict/tick/3.slash/1.slash

# ポーズ
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [177f,322f,88f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [54f,0f,0f]
# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0120.convict/tick/move/teleport