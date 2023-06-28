#> asset:mob/0311.blazing_inferno/tick/reset
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/**

# タグ削除
    tag @s remove 8N.InAction
    tag @s remove 8N.Skill.TripleFireball
    tag @s remove 8N.Skill.DashPunch
    tag @s remove 8N.Skill.Firebomb

# 円移動タグとこっち向くタグを付与
    tag @s add 8N.RailMove
    tag @s add 8N.PlayerFacing

# スコアリセット
    scoreboard players reset @s 8N.Tick

# 待機アニメを再生しなおす
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neurtal/play