#> asset:mob/1004.tultaria/tick/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death

# ポーズを戻す
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.0f,0.0f,0.0f]

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20068}
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# タグをリセットする
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon
    tag @s remove RW.SkillLaser
    tag @s remove RW.MiniSkillChase
    tag @s remove RW.MiniSkillBulletHell
    tag @s remove RW.MiniSkillShot
    tag @s remove RW.MiniSkillLaser


    tag @s remove RW.InAction

# チェイス停止
    kill @e[tag=RW.ChaseMarker]
    tag @s remove RW.ChaseShot

# スコアを戻す
    scoreboard players set @s RW.Tick 0
    scoreboard players set @s RW.LoopCount 0
    scoreboard players reset @s RW.FakeInertia

# 速度設定
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 8
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 12
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 14

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# ランダム移動
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker