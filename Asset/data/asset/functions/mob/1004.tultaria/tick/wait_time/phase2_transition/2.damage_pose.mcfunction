#> asset:mob/1004.tultaria/tick/wait_time/phase2_transition/2.damage_pose
#
# ダメージを受けたポーズを取る
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick

# タグ付与、全基本動作停止
    tag @s add RW.InAction

# タグをリセットする
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillOffCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon
    tag @s remove RW.SkillLaser

# 無敵になる
    data modify entity @s Invulnerable set value 1b

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [10f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-75f,0f,75f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [-10.0f,0.0f,0.0f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-25 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.0f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20088}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> ぐっ…！","color":"white"}]