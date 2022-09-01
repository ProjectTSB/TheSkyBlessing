#> asset:mob/1004.tultaria/tick/1.melee_attack/4.slash
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [30f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [20f,0f,75f]

# モデル全体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~25 ~

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20073}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~5 ~

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 2

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,15.0f,0.1f]},DisabledSlots:4144959}

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=RW.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/1.melee_attack/slash_entity/init

# スケジュール開始
    schedule function asset:mob/1004.tultaria/tick/1.melee_attack/slash_entity/1.tick 1t replace
