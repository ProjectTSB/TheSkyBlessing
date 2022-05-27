#> asset:mob/0281.terra_doublis_attack/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0281.terra_doublis_attack/summon/1.trigger
# @within function asset:mob/0281.terra_doublis_attack/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,Pose:{Head:[0.1f,0.1f,0.1f]},Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 281
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Object"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20185}}

# 召喚者を特定
    execute store result score @e[type=armor_stand,tag=MobInit,distance=..0.01] 7T.Owner run scoreboard players get @s UserID

# ライフタイム設定
    scoreboard players set @e[type=armor_stand,tag=MobInit,distance=..0.01] 7T.Life 20

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon