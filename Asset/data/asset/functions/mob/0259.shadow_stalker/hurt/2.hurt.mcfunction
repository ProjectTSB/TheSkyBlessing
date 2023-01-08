#> asset:mob/0259.shadow_stalker/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0259.shadow_stalker/hurt/1.trigger

# 透明状態の時、被ダメ時にテレポート
# 拡散値
    execute if entity @s[tag=77.Dark] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,1d],[5d,5d]]
# 拡散する
    execute if entity @s[tag=77.Dark] at @a[gamemode=!spectator,distance=..30,sort=random,limit=1] run function lib:spread_entity/

# 演出
    playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.spider.hurt hostile @a ~ ~ ~ 1 1.5