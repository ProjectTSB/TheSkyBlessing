#> asset:mob/0056.thunder_trifler/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0056.thunder_trifler/hurt/1.trigger

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

#> SpreadLib
# @private
#declare tag SpreadMarker

# ワープ
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.633d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=Attacker] positioned ~ ~25 ~ rotated ~ 90 run function lib:forward_spreader/circle
    execute at @p[tag=Attacker] positioned ~ ~25 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^25 if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~
# 武器が剣の場合弓に切替
   item replace entity @s[predicate=asset:mob/0056.thunder_trifler/golden_sword] weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:2s}]}

# speedバフ消し
    effect clear @s speed
# リセット
    kill @e[type=marker,tag=SpreadMarker]
