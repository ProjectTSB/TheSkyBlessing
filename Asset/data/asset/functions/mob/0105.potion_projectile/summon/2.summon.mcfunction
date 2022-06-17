#> asset:mob/0105.potion_projectile/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0105.potion_projectile/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["MobInit","2X.Potion"]}
# ID (int)
    data modify storage asset:mob ID set value 105
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"マッドサイエンティスト","color":"white"}'

# ポーションの色を合わせる
    execute if entity @s[tag=2W.Poison] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:26112}}
    execute if entity @s[tag=2W.Fire] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:13369344}}
    execute if entity @s[tag=2W.Water] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:8454143}}
    execute if entity @s[tag=2W.Thunder] run data modify storage asset:mob Armor.Head set value {id:"splash_potion",Count:1b,tag:{CustomPotionColor:16776960}}

# ポーションにタグ付け
    execute if entity @s[tag=2W.Poison] run tag @e[type=armor_stand,tag=MobInit,distance=..0.01] add 2X.Poison
    execute if entity @s[tag=2W.Fire] run tag @e[type=armor_stand,tag=MobInit,distance=..0.01] add 2X.Fire
    execute if entity @s[tag=2W.Water] run tag @e[type=armor_stand,tag=MobInit,distance=..0.01] add 2X.Water
    execute if entity @s[tag=2W.Thunder] run tag @e[type=armor_stand,tag=MobInit,distance=..0.01] add 2X.Thunder


# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon