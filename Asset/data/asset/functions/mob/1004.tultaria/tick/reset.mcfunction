#> asset:mob/1004.tultaria/tick/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]

# 頭のポーズ初期化
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]


# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20072}

# タグをリセットする
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillOffCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon

# スコアを戻す
    scoreboard players set @s RW.Tick -40
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,10d],[8d,8d]]