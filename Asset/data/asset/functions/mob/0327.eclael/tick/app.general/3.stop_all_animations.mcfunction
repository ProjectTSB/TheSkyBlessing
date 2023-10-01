#> asset:mob/0327.eclael/tick/app.general/3.stop_all_animations
#
# 汎用処理 全てのアニメーション再生停止
#
# @within function asset:mob/0327.eclael/tick/**

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# タグ消去
    tag @s remove 93.Skill.Former.Idle
    tag @s remove 93.Skill.Former.Iai
    tag @s remove 93.Skill.Former.Iai.Damage
    tag @s remove 93.Skill.Former.Slash
    tag @s remove 93.Skill.Former.Shot
    tag @s remove 93.Skill.Former.UpperShot
    tag @s remove 93.Skill.Former.UpperShot.Damage

# animated java再生停止
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
