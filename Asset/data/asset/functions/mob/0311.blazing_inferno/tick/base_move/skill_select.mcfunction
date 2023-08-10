#> asset:mob/0311.blazing_inferno/tick/base_move/skill_select
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/

# タグ付与
    tag @s add 8N.InAction

# スコアを0に戻す
    scoreboard players set @s 8N.Tick 0

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# スキル選択
    scoreboard players operation $Random Temporary %= $5 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 2
    #scoreboard players set @s 8N.MoveCount 0

# 数回に一回の行動は固定
    execute if score @s 8N.MoveCount matches 5.. run tag @s add 8N.Skill.Summon
    execute if score @s 8N.MoveCount matches 5.. run scoreboard players reset $Random Temporary

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 8N.Skill.TripleFireball
    execute if score $Random Temporary matches 1 run tag @s add 8N.Skill.DashPunch
    execute if score $Random Temporary matches 2 run tag @s add 8N.Skill.Firebomb
    execute if score $Random Temporary matches 3 run tag @s add 8N.Skill.SpreadMine
    execute if score $Random Temporary matches 4 run tag @s add 8N.Skill.RushPunch

# 行動カウント増やす
    scoreboard players add @s 8N.MoveCount 1

# リセット
    scoreboard players reset $Random Temporary
