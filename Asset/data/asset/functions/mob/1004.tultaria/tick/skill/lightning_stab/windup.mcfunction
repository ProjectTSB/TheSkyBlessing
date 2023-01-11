#> asset:mob/1004.tultaria/tick/skill/lightning_stab/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-75f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-15f,15f,115f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20072}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 体変える
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~45 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20087}
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~10 ~

# 雷撃マーカー設置
    summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning1"]}

# 演出
    particle minecraft:dust 0.878 1 0.333 1.5 ~ ~1 ~ 0.5 0.8 0.5 0 50 force @a[distance=..30]
    particle minecraft:instant_effect ~ ~1 ~ 0.3 0.8 0.3 0 25 force @a[distance=..30]
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2