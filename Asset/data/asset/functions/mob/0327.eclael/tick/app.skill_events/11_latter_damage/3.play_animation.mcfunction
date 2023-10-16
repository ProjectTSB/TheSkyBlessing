#> asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/3.play_animation
#
# アニメーションのイベントハンドラ 後半・怯み アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main

# ランダム再生
    execute if predicate lib:random_pass_per/50 run tag @s add 93.Temp.Me
    execute if entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/11_0_latter_damage_0/play
    execute unless entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/11_1_latter_damage_1/play

# 終了
    tag @s remove 93.Temp.Me
