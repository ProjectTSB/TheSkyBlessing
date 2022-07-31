#> asset:mob/0301.sinful_thoughts/tick/reset
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,330f,0f]
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,34f,0f]

# タグをリセットする
    function asset:mob/0301.sinful_thoughts/tick/skill_tag_remove
# スコアを戻す
    scoreboard players set @s 8D.Tick -40

# 条件でテレポートする
    function asset:mob/0301.sinful_thoughts/tick/move/conditional_teleport