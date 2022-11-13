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
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:462}}

# ユーザーIDを受け取る
    scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] CU.UserID = @p[tag=this] UserID

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0286.456_dice_entity/summon/init
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon