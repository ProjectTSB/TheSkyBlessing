#> asset:mob/0056.thunder_trifler/hurt/teleport
#
#
#
# @within function asset:mob/0056.thunder_trifler/hurt/2.hurt

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

#> SpreadLib
# @private
    #declare tag SpreadMarker

# マーカーをワープさせて、そこが安全地帯ならワープする
    execute at @p[tag=Attacker,distance=..50] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @p[tag=Attacker,distance=..50] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# 武器が剣の場合弓に切替
   execute if entity @s[tag=1K.Sword] run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:2s}]}

# 剣Tag削除
    execute if entity @s[tag=1K.Sword] run tag @s remove 1K.Sword

# speedバフ消し
    effect clear @s speed
# リセット
    kill @e[type=marker,tag=SpreadMarker]