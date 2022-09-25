#> asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/4.shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-30f,0f,75f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20069}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-45 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [5.1f,0.1f,0.1f]
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~5 ~

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.3

# 召喚
    data modify storage api: Argument.ID set value 1019
    execute positioned ~ ~1.5 ~ run function api:mob/summon

# ループカウント増える
    scoreboard players add @s RW.LoopCount 1

# リセット
    scoreboard players reset $ShotInterval Temporary