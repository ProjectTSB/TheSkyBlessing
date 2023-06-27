#> asset:mob/0311.blazing_inferno/tick/skill_select
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
    scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 8N.Skill.TripleFireball
    execute if score $Random Temporary matches 1 run tag @s add 8N.Skill.DashPunch

# 大技その1
    #execute if score $Random Temporary matches 8 run tag @s add 8N.SkillDeadly1

# リセット
    scoreboard players reset $Random Temporary