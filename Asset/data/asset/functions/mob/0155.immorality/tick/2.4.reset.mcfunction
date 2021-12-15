#> asset:mob/0155.immorality/tick/2.4.reset
#
#
#
# @within function asset:mob/0155.immorality/tick/2.tick
#> Private
# @private
    #declare score_holder $RandomDamage

# 次に攻撃するタイミングをランダムにする
# 疑似乱数取得
    execute store result score $RandomDamage Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $RandomDamage Temporary %= $11 Const
#スコアセットセット
    scoreboard players operation @s 4B.ShotTime = $RandomDamage Temporary

# リセット処理
    scoreboard players reset $RandomDamage Temporary
