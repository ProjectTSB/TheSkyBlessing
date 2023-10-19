#> asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/1.main
#
# アニメーションのイベントハンドラ 後半・突き・怯み
# 突きの怯みモーション．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 怯み
# animated javaアニメーション再生 (長さ：40tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/3_0.play_start_animation
# 移動
    execute if score @s 93.AnimationTimer matches 21 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 21..28 at @s positioned ^ ^ ^-0.15 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 29..35 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 怯み受け付け
    execute if score @s 93.AnimationTimer matches 5 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 40 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 41.. run function asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/2.end
