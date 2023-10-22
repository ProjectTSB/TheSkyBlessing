#> asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/1.main
#
# アニメーションのイベントハンドラ 後半・抜刀
# 刀を抜き，後半戦を開始する．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 無敵
    execute if score @s 93.AnimationTimer matches 1 run effect give @s resistance infinite 10 true

# animated javaアニメーション再生 (長さ：75tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/3.play_animation
# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 43 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.3
    execute if score @s 93.AnimationTimer matches 43 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.3 20

# 無敵解除
    execute if score @s 93.AnimationTimer matches 75 run effect clear @s resistance

# 終了
    execute if score @s 93.AnimationTimer matches 76.. run function asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/2.end
