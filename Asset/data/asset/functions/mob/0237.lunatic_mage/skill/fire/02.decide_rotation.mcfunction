#> asset:mob/0237.lunatic_mage/skill/fire/02.decide_rotation
#
# 炎発射の時の回転の角度を決めるよ
#
# @within function asset:mob/0237.lunatic_mage/skill/fire/01.manage

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $2 Const
# 0なら左回転Tagを付与
    execute if score $Random Temporary matches 0 run tag @s add 6L.LeftRotation
# リセット
    scoreboard players reset $Random Temporary
