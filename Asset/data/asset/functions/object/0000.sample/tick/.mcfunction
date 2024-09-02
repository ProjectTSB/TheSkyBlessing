#> asset:object/0000.sample/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/0/tick

# ここに書いた処理は毎Tick実行される

# サンプルの処理
# パーティクルを出しながら追いかけてくる
    particle dust 0.17 0.8 0.69 2 ~ ~ ~ 0.2 0.2 0.2 0 1
    execute facing entity @p eyes run tp @s ^ ^ ^0.25 ~ ~

# オブジェクト内でTick時間をカウントしたい場合などは「Object.Generic.Tick」というスコアボードが用意されている。
# 一定時間後に消したい、といった単純な処理であるなら、オブジェクト用のTickスコアを定義する必要はない。
# 定義されているだけなので、増減やリセットの処理はオブジェクト内の処理で作る必要がある
# 何か個別でスコアボードが必要になった場合などはload処理に書くこと。

# 消滅処理
# オブジェクトは基本的に自然消滅しないし倒すこともできないので、基本的には時間での消滅処理を作ることを推奨する
    scoreboard players add @s Generic.Object.Tick 1
    kill @s[scores={Generic.Object.Tick=200..}]

# 継承可能な処理にする
    data modify storage asset:object Implement set value true
