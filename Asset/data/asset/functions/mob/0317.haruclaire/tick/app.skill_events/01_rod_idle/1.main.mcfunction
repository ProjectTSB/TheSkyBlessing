#> asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/1.main
#
# アニメーションのイベントハンドラ 杖モード・待機
# その場でふよふよする．たまに手癖で杖を回転させる．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/3.play_animation

# 移動モード決定
    execute if score @s 8T.AnimationTimer matches 1 unless entity @e[type=marker,tag=8T.Marker.SpawnPoint,distance=..8] run tag @s add 8T.SkillEv.Rod.Idle.MoveToHome
    execute if score @s 8T.AnimationTimer matches 1 unless entity @s[tag=8T.SkillEv.Rod.Idle.MoveToHome] if predicate lib:random_pass_per/50 run tag @s add 8T.SkillEv.Rod.Idle.MoveToSide

# 中心点に向かって移動
    execute if entity @s[tag=8T.SkillEv.Rod.Idle.MoveToHome] facing entity @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] eyes positioned ^ ^ ^0.05 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 適当に移動
    execute if entity @s[tag=8T.SkillEv.Rod.Idle.MoveToSide] positioned ^0.05 ^ ^ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# プレイヤーから離れるように移動
    execute if entity @s[tag=!8T.SkillEv.Rod.Idle.MoveToHome,tag=!8T.SkillEv.Rod.Idle.MoveToSide] facing entity @p feet rotated ~ 0 positioned ^ ^ ^-0.05 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport

# 終了
    execute if score @s 8T.AnimationTimer matches 41.. run function asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/2.end
