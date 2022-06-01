#> asset:mob/0120.convict/tick/reset
#
#
#
# @within function asset:mob/0120.convict/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,330f,0f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,34f,0f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,6f,4f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [22f,0f,360f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [24f,0f,0f]

# タグをリセットする
    function asset:mob/0120.convict/tick/skill_tag_remove
# スコアを戻す
    scoreboard players set @s 3C.Tick -40

# 条件でテレポートする
    function asset:mob/0120.convict/tick/move/conditional_teleport