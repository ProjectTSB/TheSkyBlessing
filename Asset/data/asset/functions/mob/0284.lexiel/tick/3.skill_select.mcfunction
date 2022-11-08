#> asset:mob/0284.lexiel/tick/3.skill_select
#
#
#
# @within function asset:mob/0284.lexiel/tick/**
#> private
# @private
    #declare score_holder $Random


# 通常行動停止タグ付与
    tag @s add 7W.InAction

# スコアを0に戻す
    scoreboard players set @s 7W.Tick 0
    scoreboard players set @s 7W.LoopCount 0

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい数だけ出す
    scoreboard players operation $Random Temporary %= $5 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 7W.SkillMelee
    execute if score $Random Temporary matches 1 run tag @s add 7W.SkillThunder

# リセット
    scoreboard players reset $Random Temporary