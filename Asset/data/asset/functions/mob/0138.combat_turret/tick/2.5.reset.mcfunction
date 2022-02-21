#> asset:mob/0138.combat_turret/tick/2.5.reset
#
#
#
# @within function asset:mob/0138.combat_turret/tick/2.1.near_player
#> Private
# @private
    #declare score_holder $RandomDamage

# 次に攻撃するタイミングをランダムにする
# 疑似乱数取得
    execute store result score $RandomDamage Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $RandomDamage Temporary %= $31 Const
#スコアセットセット
    scoreboard players operation @s 3U.Time = $RandomDamage Temporary


# リセット処理
    data modify entity @s NoAI set value 0
    scoreboard players reset $RandomDamage Temporary
