#> asset:mob/0056.thunder_trifler/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0056.thunder_trifler/hurt/1.trigger

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.7 0.9 0


# ワープ
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.633
    execute facing entity @p[tag=Attacker] eyes rotated ~ 0 run function lib:forward_spreader/circle
    execute at 0-0-0-0-0 if block ~ ~ ~ #asset:mob/0056.thunder_trifler/no_collision run tp @s 0-0-0-0-0

# 武器が剣の場合弓に切替
   replaceitem entity @s[predicate=asset:mob/0056.thunder_trifler/golden_sword] weapon.mainhand bow{Enchantments:[{id:"punch",lvl:2}]}

# speedバフ消し
    effect clear @s speed
