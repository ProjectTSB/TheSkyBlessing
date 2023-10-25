#> asset:mob/0327.eclael/tick/app.1_11_2.select_skill_latter_hard_former_moveback
#
# 使用するスキルを決定する・後半戦の前半
#
# @within function asset:mob/0327.eclael/tick/**


# 中心点からあまりにも離れている場合，電光石火・帰還を使用
    execute unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..30] run tag @s add 93.Skill.Latter.Move.Back
# 条件に合わない場合，行動順をスキップ
    execute if entity @s[tag=!93.Skill.Latter.Move.Back] run scoreboard players add @s 93.ActionCount 1
