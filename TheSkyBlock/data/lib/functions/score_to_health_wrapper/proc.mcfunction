#> lib:score_to_health_wrapper/proc
#
# そのtick内のHP処理をまとめて処理します。
#
# @within function core:tick/post-tick-proc_player

# 値がなければ現在値を入れる
    execute unless score @s ScoreToHealth matches -2147483648..2147483647 store result score @s ScoreToHealth run data get entity @s Health 100
# 回復/ダメージを適用
    scoreboard players operation @s ScoreToHealth += @s ScoreToHPFluc
# 0<=kill処理
    execute if score @s ScoreToHealth matches ..0 run kill @s
    execute if score @s ScoreToHealth matches ..0 run scoreboard players reset @s ScoreToHealth
# リセット
    scoreboard players reset @s ScoreToHPFluc