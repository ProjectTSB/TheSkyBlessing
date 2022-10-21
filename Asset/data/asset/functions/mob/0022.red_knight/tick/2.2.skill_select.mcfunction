#> asset:mob/0022.red_knight/tick/2.2.skill_select
#
# スキル選ぶぞ
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 通常行動停止タグ付与
    tag @s add M.InAction

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add M.SkillDash

# リセット
    scoreboard players reset $Random Temporary