#> asset:mob/0311.blazing_inferno/tick/base_move/reset
#
#
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/**
#   asset:mob/0311.blazing_inferno/hurt/active_50per

# スコアリセット
    scoreboard players reset @s 8N.Tick
    scoreboard players reset @s[tag=8N.Skill.Summon] 8N.MoveCount

# タグ削除
    tag @s remove 8N.InAction
    tag @s remove 8N.Skill.TripleFireball
    tag @s remove 8N.Skill.DashPunch
    tag @s remove 8N.Skill.Firebomb
    tag @s remove 8N.Skill.Summon
    tag @s remove 8N.Skill.SpreadMine
    tag @s remove 8N.Skill.RushPunch

# 円移動タグとこっち向くタグを付与
    tag @s add 8N.RailMove
    tag @s add 8N.PlayerFacing