#> asset:mob/0022.red_knight/tick/reset
#
# 挙動のリセットをします
#
# @within function asset:mob/0022.red_knight/tick/**

# ポーズのリセット
    data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,14f,0f]
    data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,346f,0f]
    data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [10f,314f,0f]
    data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [22f,0f,342f]
    data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [32f,0f,0f]

# タグのリセット
    tag @s remove M.SkillSword
    tag @s remove M.SkillSlash
    tag @s remove M.SkillBeam
    tag @s remove M.SkillTpSlash

# スコアのリセット
    scoreboard players set @s M.Tick -50

# テレポート
    execute if entity @p[distance=..100] run function asset:mob/0022.red_knight/tick/2.1.teleport