#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/1.init
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# パーティクル
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 5

# 体力設定
    scoreboard players set @s 87.Health 400

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# 自身の属性を定義する
    execute if score $Random Temporary matches 0 run tag @s add 87.Fire
    execute if score $Random Temporary matches 1 run tag @s add 87.Thunder
    execute if score $Random Temporary matches 2 run tag @s add 87.Water

# 頭防具
    item replace entity @s[tag=87.Fire] armor.head with stick{CustomModelData:20230}
    item replace entity @s[tag=87.Thunder] armor.head with stick{CustomModelData:20231}
    item replace entity @s[tag=87.Water] armor.head with stick{CustomModelData:20232}

# 使用者のユーザーIDをコピー
    scoreboard players operation @s 87.UserID = @p[tag=this] UserID

# 近くの誰かを見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# タグ整備
    tag @s remove 87.Init
    tag @s add 87.Main

# リセット
    scoreboard players reset $Random Temporary