#> asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick

# 予告
    execute positioned ~ ~1.7 ~ facing entity @r feet run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/3.1.targeting

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-75f,0f,75f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}

# 体変える
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20077}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20080}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-75 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20087}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~-25 ~

# 演出
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.2