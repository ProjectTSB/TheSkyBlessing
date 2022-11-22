#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash4
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1.2 1

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.00f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}

# 追撃
   # execute if entity @s[scores={SA.BloodCharge=0..}] positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/plus_slash_2

# 攻撃
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage

# しばらく撃てなくなる
    execute unless score @s SA.BloodCharge matches 401.. run tag @s add SA.FinishCoolTime