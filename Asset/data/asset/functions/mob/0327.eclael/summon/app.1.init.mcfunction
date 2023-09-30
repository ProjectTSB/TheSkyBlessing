#> asset:mob/0327.eclael/summon/app.1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0327.eclael/summon/2.summon

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 93.AnimationTimer 0
    scoreboard players set @s 93.ActionCount 0
    scoreboard players set @s 93.DamageIntervalTimer 0

# animated javaモデル召喚
    execute positioned ~ ~-100 ~ rotated ~ 0 run function animated_java:eclael/summon

# TODO:登場演出再生
    # tag @s add 8T.Skill.Rod.Start

# TODO:以下実装時削除
    tag @s add 93.Skill.Former.Idle