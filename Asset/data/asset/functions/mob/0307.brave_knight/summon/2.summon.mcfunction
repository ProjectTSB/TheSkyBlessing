#> asset:mob/0307.brave_knight/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0307.brave_knight/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Pose:{LeftArm:[0.1f,0.1f,-15.0f],RightArm:[0.1f,0.1f,15.0f],Head:[0.1f,0.1f,0.1f]},DisabledSlots:414495,Invisible:1b,NoGravity:1b,Small:1b,Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 307
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Friend"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ブレイブナイト","color":"white"}'

# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20299}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20300}}

# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20298}}

# 召喚者のIDを自身のオーナーIDとする
    scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] 0307.OwnerID = @p[tag=this,distance=..10] UserID

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon