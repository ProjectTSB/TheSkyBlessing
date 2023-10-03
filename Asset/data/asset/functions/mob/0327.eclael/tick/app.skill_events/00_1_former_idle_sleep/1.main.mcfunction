#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main
#
# アニメーションのイベントハンドラ 前半・居眠り
# その場でうとうとする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## あくび
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.1.play_start_animation

## 居眠り
# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 71 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.2.play_sleep_animation
# 攻撃されていない場合，引き続き眠る
    execute if entity @s[tag=!93.Temp.SleepDamage] if score @s 93.AnimationTimer matches 131 run scoreboard players set @s 93.AnimationTimer 65

## 起床
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 131 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.3.play_end_animation

# 終了
    execute if score @s 93.AnimationTimer matches 201.. run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/2.end
