#> asset:mob/0120.convict/tick/1.axe/2.first_tick
#
#
#
# @within function asset:mob/0120.convict/tick/1.axe/1.axe

# ポーズ
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [40f,0f,0f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,0f,342f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [0f,0f,18f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [183f,28f,0f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [177f,336f,0f]

# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0120.convict/tick/move/teleport