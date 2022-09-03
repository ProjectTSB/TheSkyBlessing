#> asset:mob/1004.tultaria/tick/1.melee_attack/6.slash3
#
# 3発目
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.tick

# ダメージ判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "None"
    # 補正functionを実行
        function lib:damage/modifier
    # 対象
        execute rotated ~ 0 positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
    # リセット
        function lib:damage/reset

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["RW.SlashSweep","Friend","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=RW.SlashInit,distance=..0.01,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/1.melee_attack/slash_entity/init

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.2