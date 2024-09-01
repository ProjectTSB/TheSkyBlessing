#> asset:object/0000.sample/tick/
#
# オブジェクトのTick処理
#
# @within asset:object/alias/0/tick

# ここに書いた処理は毎Tick実行される
# 今回はサンプルとしてこっちを追いかけてくる


# 演出
    particle dust 0.17 0.8 0.69 2 ~ ~ ~ 0.2 0.2 0.2 0 1

# 移動
    execute facing entity @p eyes run tp @s ^ ^ ^0.25 ~ ~
