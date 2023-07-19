#> asset:mob/0317.haruclaire/tick/app.general/6.cancel_damage_animation
#
# 汎用処理 怯みキャンセル
#
# @within function asset:mob/0317.haruclaire/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0317.haruclaire/tick/app.general/3.stop_all_animations

# 待機アニメーション再生
    tag @s add 8T.Skill.Sword.Idle
    scoreboard players set @s 8T.AnimationTimer 0

# ワープ
    # 中心点から近い場合は，後ろに下がる
        execute if entity @e[type=marker,tag=8T.Marker.SpawnPoint,distance=..8] run function asset:mob/0317.haruclaire/tick/app.general/6.1.teleport_to_back
    # 中心点から遠い場合は，中心点に戻る
        execute unless entity @e[type=marker,tag=8T.Marker.SpawnPoint,distance=..8] positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/0317.haruclaire/tick/app.general/6.2.teleport_to_center

    # 演出
        playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
        playsound item.trident.return hostile @a ~ ~ ~ 1 2
        particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.2 10 normal @a

# 怯み終了
    tag @s remove 8T.Temp.Damage