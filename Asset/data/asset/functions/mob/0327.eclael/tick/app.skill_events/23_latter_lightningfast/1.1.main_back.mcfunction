#> asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/1.1.main_back
#
# アニメーションのイベントハンドラ 後半・電光石火
# 高速で中心点に移動する．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：35tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/3.play_animation
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 6 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
# 移動
    execute if score @s 93.AnimationTimer matches 6 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-11 ^2 ^7 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 6 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 9 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^3 ^8 ^5 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 9 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 12 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^0.1 ^ facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 12 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

# 終了
    execute if score @s 93.AnimationTimer matches 36.. run function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/2.end
