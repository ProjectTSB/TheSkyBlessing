#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/1.init
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# パーティクル
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10

# 体力設定
    scoreboard players set @s 87.Health 400

# 頭防具
    item replace entity @s armor.head with stick{CustomModelData:20229}

# 使用者のユーザーIDをコピー
    scoreboard players operation @s 87.UserID = @p[tag=this] UserID

# タグ整備
    tag @s remove 87.Init
    tag @s add 87.Main