#> asset:mob/0190.thunder_mage/tick/3.attack
#
#
#
# @within function asset:mob/0190.thunder_mage/tick/2.tick
#> Private
# @private
    #declare score_holder $Random

# 最寄りのプレイヤーに対して発動（範囲内にいないなら不発）
    data modify storage api: Argument.ID set value 191
    execute at @r[gamemode=!spectator,distance=..15] run function api:mob/summon


# 次に攻撃するタイミングをランダムにする
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $Random Temporary %= $31 Const
# スコアセットセット
    scoreboard players operation @s 5A.Tick = $Random Temporary
# スコアセットされたものから少し減らす
    scoreboard players remove @s 5A.Tick 60

# リセット
    scoreboard players reset $Random Temporary