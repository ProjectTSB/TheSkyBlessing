#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/4.start_attack
#
# 攻撃開始
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 演出
    playsound ogg:block.respawn_anchor.deplete1 hostile @a ~ ~ ~ 3 1.5
    playsound ogg:block.respawn_anchor.deplete1 hostile @a ~ ~ ~ 3 1.7
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.6
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.7
    particle minecraft:reverse_portal ~ ~1.3 ~ 0 0 0 1 200

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-30f,0f,75f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20069}

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-45 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [5.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~5 ~
