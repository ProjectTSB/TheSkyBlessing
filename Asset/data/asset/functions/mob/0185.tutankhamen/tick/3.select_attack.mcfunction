#> asset:mob/0185.tutankhamen/tick/3.select_attack
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# メッセージ出力
    execute if score $Random Temporary matches 0 run function asset:mob/0185.tutankhamen/tick/burn_razer/1.main
    execute if score $Random Temporary matches 1 run say great
    execute if score $Random Temporary matches 2 run say miss
    execute if score $Random Temporary matches 3 run
# リセット
    scoreboard players reset $Random Temporary