#> asset:artifact/0976.brave_sword/trigger/combo/slash3
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1.5 1.8
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 1.5

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["R4.SlashSweep","R4.SlashFinish","R4.SlashInit","Object"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}

# 攻撃
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:artifact/0976.brave_sword/trigger/combo/damage

# 斬撃を飛ばす
    execute anchored eyes run summon armor_stand ^ ^1.5 ^ {Marker:1b,Invisible:1b,Small:1b,Tags:["Projectile","R4.SlashShot","R4.SlashShotInit"],Pose:{Head:[0.1f,0f,0.0f]},DisabledSlots:4144959}
    execute as @e[type=armor_stand,tag=R4.SlashShotInit,distance=..5,sort=nearest,limit=1] at @s run function asset:artifact/0976.brave_sword/trigger/slash_shot/init
    schedule function asset:artifact/0976.brave_sword/trigger/slash_shot/1.tick 1t replace

# しばらく撃てなくなる
    tag @s add R4.FinishCoolTime