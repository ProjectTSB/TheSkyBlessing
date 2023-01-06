#> asset:mob/1004.tultaria/tick/skill/blazing_slash/active
#
# 剣を振り、でっか～い斬撃を発生させる
#
# @within function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [10f,0f,-90f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [75f,165f,85f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20073}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 体変える
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20077}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20080}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-75 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [10.1f,0.1f,0.1f]
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-50 ~

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}

# エフェクト
    execute positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/particle

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=RW.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/slash_entity/init

# スケジュール開始
    schedule function asset:mob/1004.tultaria/tick/skill/1.melee_attack/slash_entity/1.tick 1t replace

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1.5 2