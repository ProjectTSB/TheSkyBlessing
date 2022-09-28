#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/3.activate
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [10f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-45f,0f,90f]

# 腕のアイテム
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20068}

# 体変える
    execute if entity @s[tag=!RW.Phase3] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}
    execute if entity @s[tag=RW.Phase3] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-35 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7
