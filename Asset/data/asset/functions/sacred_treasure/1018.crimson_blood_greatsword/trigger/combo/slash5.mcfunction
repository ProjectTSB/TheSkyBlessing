#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash5
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 1.5

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-45F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=125..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-125..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["SA.SlashEntity","SA.SlashEntityInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,125.0f,0.1f]},DisabledSlots:4144959}

#ダメージブレのための処理
    # 疑似乱数取得
        execute store result score $RandomDamage Temporary run function lib:random/
    # 剰余算する。追加ダメージ。
        scoreboard players operation $RandomDamage Temporary %= $51 Const
    # 最低ダメージ設定
        scoreboard players add $RandomDamage Temporary 600
# 引数の設定
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正
        function lib:damage/modifier

# 斬撃エミッターを召喚
    summon marker ~ ~ ~ {Tags:["SA.ShotEmitter","SA.ShotEmitterInit"]}
    execute as @e[type=marker,tag=SA.ShotEmitterInit,distance=..5,sort=nearest,limit=1] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/init
    schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/1.tick 1t replace

# 攻撃、開放状態でリーチ変わる
    execute unless score @s SA.BloodCharge matches 0.. positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage
    execute if score @s SA.BloodCharge matches 0.. positioned ^ ^ ^2 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2.5] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/damage

# かなりの隙を晒し、撃てなくなる
    effect give @s slowness 1 2
    scoreboard players set @s SA.Wait 30
    tag @s add SA.FinishCoolTime

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument