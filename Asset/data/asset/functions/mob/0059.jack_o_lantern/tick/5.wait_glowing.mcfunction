#> asset:mob/0059.jack_o_lantern/tick/5.wait_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.manage_glowing

#> SpreadLib
# @private
#declare tag SpreadMarker

# マーカーをワープさせて、そこが安全地帯ならワープする
    execute at @p[gamemode=!spectator,distance=..50] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @p[gamemode=!spectator,distance=..50] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# もしもマーカーの位置がダメだった場合即発光状態になる
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] unless block ~ ~-1 ~ #lib:no_collision_without_fluid unless block ~ ~1 ~ #lib:no_collision_without_fluid run scoreboard players set @s 1N.Glowing 60

# リセット
    kill @e[type=marker,tag=SpreadMarker]
# 特殊攻撃開始演出
    execute unless score @s 1N.Glowing matches 60.. run particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute unless score @s 1N.Glowing matches 60.. run particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a
    execute unless score @s 1N.Glowing matches 60.. run playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.5 0
    execute unless score @s 1N.Glowing matches 60.. run effect give @s slowness 3 5 true
    execute unless score @s 1N.Glowing matches 60.. run effect give @s weakness 3 10 true
    execute unless score @s 1N.Glowing matches 60.. run effect give @s resistance 3 6 true


# 燃えている場合火を消す
    execute if predicate lib:is_burning run data modify entity @s Fire set value 0
# カボチャを外す
    execute unless score @s 1N.Glowing matches 60.. run item replace entity @s armor.head with stone{CustomModelData:20019}
