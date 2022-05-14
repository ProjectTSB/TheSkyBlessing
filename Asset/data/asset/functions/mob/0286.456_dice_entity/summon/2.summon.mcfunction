#> asset:mob/0286.456_dice_entity/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0286.456_dice_entity/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 286
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectiele"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:462}}

# 乱数決定生成
    # 疑似乱数取得
        execute store result score @e[type=armor_stand,tag=MobInit,distance=..0.01] Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] Temporary %= $3 Const
    # 0~2の値を4~6になるように4加算
        scoreboard players add @e[type=armor_stand,tag=MobInit,distance=..0.01] Temporary 4
    # 保持
        scoreboard players operation @s CU.RandomCount = @s Temporary

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon