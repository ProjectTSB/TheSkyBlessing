#> asset:mob/0022.red_knight/tick/2.1.dash_select
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 通常行動停止タグ付与
    tag @s add M.InAction

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# スコアを0に戻す
    scoreboard players set @s M.Tick 0
    scoreboard players set @s M.LoopCount 0

# タグ調整
    tag @s add M.SkillReady

# デバッグのコマンド
    #scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add M.DashTriple
    execute if score $Random Temporary matches 1 run tag @s add M.DashStraight
    execute if score $Random Temporary matches 2 run tag @s add M.DashStab

# リセット
    scoreboard players reset $Random Temporary