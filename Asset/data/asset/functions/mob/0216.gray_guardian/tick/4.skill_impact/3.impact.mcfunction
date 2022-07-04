#> asset:mob/0216.gray_guardian/tick/4.skill_impact/3.impact
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/1.skill_impact

# アマスタ変更
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20127}
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,0f]

# 演出
    execute rotated ~40 ~ positioned ^-0.6 ^ ^4 run function asset:mob/0216.gray_guardian/tick/4.skill_impact/vfx

# ダメージ
    function asset:mob/0216.gray_guardian/tick/4.skill_impact/4.damage

