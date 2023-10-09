#> asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/1.main
#
# アニメーションのイベントハンドラ 杖モード・武器持ち替え
# 登場演出．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# 再生中は無敵
    execute if score @s 8T.AnimationTimer matches 1..62 run effect give @s resistance 1 10 true

# animated javaアニメーション再生 (長さ：81tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/3.play_animation

# 中心点に移動
    execute if score @s 8T.AnimationTimer matches 1 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 1 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 1 at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.fox.teleport hostile @a ~ ~ ~ 1 1
    execute if score @s 8T.AnimationTimer matches 1 run particle flash ~ ~2 ~ 0 0 0 0 1 normal @a
    execute if score @s 8T.AnimationTimer matches 1 run particle end_rod ~ ~2 ~ 0 0 0 0.2 5 normal @a

# 演出  
    execute if score @s 8T.AnimationTimer matches 8 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 27 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.3
    execute if score @s 8T.AnimationTimer matches 27 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.6
    execute if score @s 8T.AnimationTimer matches 52 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 57 run playsound item.axe.wax_off hostile @a ~ ~ ~ 1 2
    execute if score @s 8T.AnimationTimer matches 63 run playsound item.axe.wax_off hostile @a ~ ~ ~ 1 2

# 終了
    execute if score @s 8T.AnimationTimer matches 82.. run function asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/2.end
