#> asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/1.main
#
# アニメーションのイベントハンドラ 杖モード・登場
# 登場演出．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# 再生中は無敵
    execute if score @s 8T.AnimationTimer matches 1..86 run effect give @s resistance 1 10 true

# animated javaアニメーション再生 (長さ：105tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/3.play_animation

# 演出
    execute if score @s 8T.AnimationTimer matches 15 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 30 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 8T.AnimationTimer matches 32 positioned ^-1.3 ^2.5 ^ run particle firework ~ ~ ~ 0 0 0 0.2 5
    execute if score @s 8T.AnimationTimer matches 90 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.2

# 終了
    execute if score @s 8T.AnimationTimer matches 106.. run function asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/2.end
