#> asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/3.play_animation
#
# アニメーションのイベントハンドラ 杖モード・待機 アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/1.main

# 低確率でレアモーションを再生する
    execute if predicate lib:random_pass_per/15 run tag @s add 8T.Temp.PlayRareAnimation
    execute if entity @s[tag=8T.Temp.PlayRareAnimation] as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/01_02_rod_idle_rare/play
    execute unless entity @s[tag=8T.Temp.PlayRareAnimation] as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/01_01_rod_idle/play

# 終了
    tag @s remove 8T.Temp.PlayRareAnimation
