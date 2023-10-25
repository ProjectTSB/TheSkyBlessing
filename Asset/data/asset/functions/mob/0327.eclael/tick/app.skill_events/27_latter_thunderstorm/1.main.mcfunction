#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main
#
# アニメーションのイベントハンドラ 後半・雷雨
# 天候を雷雨に変更する．
# これ自体に意味はないが，他の攻撃が強化される．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 無敵
    execute if score @s 93.AnimationTimer matches 1 run effect give @s resistance infinite 10 true

# animated javaアニメーション再生 (長さ：65tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3.play_animation
# 天候を変える
    execute if score @s 93.AnimationTimer matches 35 run weather thunder 6000t
# 演出
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/4.effect

# 無敵解除
    execute if score @s 93.AnimationTimer matches 65 run effect clear @s resistance

# 終了
    execute if score @s 93.AnimationTimer matches 66.. run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/2.end
