#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/4.effect
#
# アニメーションのイベントハンドラ 後半・雷雨 演出
# 天鍵杖より引用
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 200
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 200
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0
    
# 演出用
    execute rotated ~ 0 positioned ^1.4 ^ ^-2.42487 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^2.8 ^ ^0 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^1.4 ^ ^2.42487 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^-1.4 ^ ^2.42487 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^-2.8 ^ ^0 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^-1.4 ^ ^-2.42487 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^0 ^ ^-5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^4.33013 ^ ^-2.5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^4.33013 ^ ^2.5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^0 ^ ^5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^-4.33013 ^ ^2.5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder
    execute rotated ~ 0 positioned ^-4.33013 ^ ^-2.5 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_thunder