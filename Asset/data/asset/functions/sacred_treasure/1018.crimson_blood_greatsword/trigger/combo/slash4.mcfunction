#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash4
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.player.breath player @a ~ ~ ~ 1 1.2

#ダメージブレのための処理
    # 疑似乱数取得
        execute store result score $RandomDamage Temporary run function lib:random/
    # 剰余算する。追加ダメージ。
        scoreboard players operation $RandomDamage Temporary %= $51 Const
    # 最低ダメージ設定
        scoreboard players add $RandomDamage Temporary 500
# 引数の設定
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ふっとばし力、4段目に放った場合は強く飛ばす
        execute unless score @s SA.BloodCharge matches 0.. run data modify storage lib: Argument.VectorMagnitude set value -0.5
        execute if score @s SA.BloodCharge matches 1.. run data modify storage lib: Argument.VectorMagnitude set value -1.0
        data modify storage lib: Argument.KnockbackResist set value true

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
   execute positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/plus_slash_4

# 攻撃、開放状態でリーチ変わる
    execute unless score @s SA.BloodCharge matches 0.. positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage
    execute if score @s SA.BloodCharge matches 0.. positioned ^ ^ ^2 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2.5] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage

# しばらく撃てなくなる
    execute unless score @s SA.BloodCharge matches 401.. run tag @s add SA.FinishCoolTime

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument