#> asset:mob/0317.haruclaire/summon/app.1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0317.haruclaire/summon/2.summon

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 8T.AnimationTimer 0
    scoreboard players set @s 8T.ActionCount 0

# 登場演出再生
    tag @s add 8T.Skill.Rod.Start
