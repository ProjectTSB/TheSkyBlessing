#> asset:artifact/0973.call_rod_spirit/trigger/fairy/1.init
#
#
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/3.main

# パーティクル
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10

# 体力設定
    scoreboard players set @s R1.LifeTime 400

# 頭防具
    item replace entity @s armor.head with stick{CustomModelData:20229}

# 使用者のユーザーIDをコピー
    scoreboard players operation @s R1.UserID = @p[tag=this] UserID

# いきなり攻撃はしない
    scoreboard players set @s R1.Tick -20

# タグ整備
    tag @s remove R1.SpiritInit
    tag @s add R1.Spirit