#> asset:artifact/0976.brave_sword/trigger/combo/slash1
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["R4.SlashSweep","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}

# 攻撃
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:artifact/0976.brave_sword/trigger/combo/damage