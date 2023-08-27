#> asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/1.main
#
# アニメーションのイベントハンドラ 杖モード・テレポート
# 中心点に移動する．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：51tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/3.play_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 21 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-1 ~
    execute if score @s 8T.AnimationTimer matches 21 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-1 ~
# 演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 21 run playsound entity.fox.teleport hostile @a ~ ~ ~ 1 1
    execute if score @s 8T.AnimationTimer matches 21 run particle flash ~ ~2 ~ 0 0 0 0 1 normal @a
    execute if score @s 8T.AnimationTimer matches 25 run particle flash ~ ~2 ~ 0 0 0 0 1 normal @a
    execute if score @s 8T.AnimationTimer matches 21 run particle end_rod ~ ~2 ~ 0 0 0 0.2 5 normal @a
    execute if score @s 8T.AnimationTimer matches 25 run particle end_rod ~ ~2 ~ 0 0 0 0.2 5 normal @a
    execute if score @s 8T.AnimationTimer matches 30 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2

# 終了
    execute if score @s 8T.AnimationTimer matches 52.. run function asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/2.end
