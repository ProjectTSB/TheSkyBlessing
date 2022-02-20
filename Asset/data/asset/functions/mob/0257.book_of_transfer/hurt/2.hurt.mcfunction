#> asset:mob/0257.book_of_transfer/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0257.book_of_transfer/hurt/1.trigger

# ランダムテレポート
    execute if predicate lib:random_pass_per/60 run function asset:mob/0257.book_of_transfer/hurt/3.teleport