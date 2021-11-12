#> asset:mob/0185.tutankhamen/tick/3.select_attack
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # メッセージ出力
        execute if score $Random Temporary matches 00..24 run say excellent!
        execute if score $Random Temporary matches 25..74 run say great
        execute if score $Random Temporary matches 75..99 run say miss
    # リセット
        scoreboard players reset $Random Temporary