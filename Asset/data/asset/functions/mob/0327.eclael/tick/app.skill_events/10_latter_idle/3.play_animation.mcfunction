#> asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/3.play_animation
#
# アニメーションのイベントハンドラ 後半・待機 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/1.main

# 低確率でレアモーションを再生する
    execute if predicate lib:random_pass_per/10 run tag @s add 93.Temp.Me
    execute if entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/10_1_latter_idle_rare/play
    execute unless entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/10_0_latter_idle_normal/play

# 終了
    tag @s remove 93.Temp.Me
