#> asset:sacred_treasure/0985.noname/trigger/slash/slash2
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/**

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-180F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["RD.SlashSweep","RD.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}

# 向きを揃える
    data modify entity @e[type=armor_stand,tag=RD.SlashInit,distance=..10,sort=nearest,limit=1] Rotation[] set from entity @s Rotation[]

# 向き
    execute store result score @e[type=armor_stand,tag=RD.SlashInit,distance=..10,sort=nearest,limit=1] Temporary run data get entity @p[tag=this] Rotation[1] 1
    execute store result entity @e[type=armor_stand,tag=RD.SlashInit,distance=..10,sort=nearest,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove @e[type=armor_stand,tag=RD.SlashInit,distance=..10,sort=nearest,limit=1] Temporary 90
    scoreboard players reset @e[type=armor_stand,tag=RD.SlashInit,distance=..10,sort=nearest,limit=1] Temporary

# アニメーション開始
    execute unless entity @e[type=armor_stand,tag=RD.SlashSweep,distance=..100,limit=1] run function asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule
    execute if entity @e[type=armor_stand,tag=RD.SlashSweep,distance=..100,limit=1] run schedule function asset:sacred_treasure/0985.noname/trigger/slash/slash_schedule 1t