#> asset:mob/1004.tultaria/tick/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}

# タグをリセットする
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillOffCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon
    tag @s remove RW.SkillLaser

    tag @s remove RW.InAction

# スコアを戻す
    scoreboard players set @s RW.Tick 0
    scoreboard players reset @s RW.FakeInertia

# 速度設定
    scoreboard players set @s RW.Speed 10

# ランダム移動
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker