#> lib:score_to_health_wrapper/proc
#
# そのtick内のHP処理をまとめて処理します。
#
# @within function core:tick/post-tick-proc_player

# 値がなければ現在値を入れる
    execute unless score @s ScoreToHealth matches -2147483648..2147483647 run function api:data_get/health
    execute unless score @s ScoreToHealth matches -2147483648..2147483647 store result score @s ScoreToHealth run data get storage api: Health 100
# 回復/ダメージを適用
    scoreboard players operation @s ScoreToHealth += @s ScoreToHPFluc
# 1<=体力: ダメージ演出 //TODO
    # execute if score @s ScoreToHealth matches 1.. run
# 0>=体力: kill処理
    execute if score @s ScoreToHealth matches ..0 run kill @s
    execute if score @s ScoreToHealth matches ..0 run scoreboard players reset @s ScoreToHealth
# リセット
    scoreboard players reset @s ScoreToHPFluc