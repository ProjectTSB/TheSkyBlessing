#> asset:mob/0181.magic_bookshelf/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0181.magic_bookshelf/attack/1.trigger

# 攻撃時に火、水、雷のどれかに分岐

    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $3 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run function asset:mob/0181.magic_bookshelf/attack/3.fire
        execute if score $Random Temporary matches 1 run function asset:mob/0181.magic_bookshelf/attack/5.water
        execute if score $Random Temporary matches 2 run function asset:mob/0181.magic_bookshelf/attack/7.thunder
    # リセット
        scoreboard players reset $Random Temporary