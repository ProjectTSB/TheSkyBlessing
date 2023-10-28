#> asset:mob/0327.eclael/tick/app.skill_events/29_former_start/1.main
#
# アニメーションのイベントハンドラ 前半・登場
# 登場演出．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 無敵
    execute if score @s 93.AnimationTimer matches 1 run effect give @s resistance infinite 10 true

# animated javaアニメーション再生 (長さ：100tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/3.play_animation
# 移動
    execute if score @s 93.AnimationTimer matches 1..10 at @s positioned ~ ~0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..25 at @s positioned ~ ~-0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1

# 無敵解除
    execute if score @s 93.AnimationTimer matches 99 run effect clear @s resistance

# 終了
    execute if score @s 93.AnimationTimer matches 101.. run function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/2.end
