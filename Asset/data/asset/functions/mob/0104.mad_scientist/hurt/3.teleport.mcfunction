#> asset:mob/0104.mad_scientist/hurt/3.teleport
#
# 殺意全開ぶっ殺す攻撃
#
# @within function asset:mob/0104.mad_scientist/hurt/2.hurt
#> Private
# @private
    #declare tag SpreadMarker

# ワープ
# マーカーをワープさせて、そこが安全地帯ならワープする
    execute at @p[tag=Attacker,distance=..50] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @p[tag=Attacker,distance=..50] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]

# 斧を持ち出してくる
   item replace entity @s weapon.mainhand with netherite_axe

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute at @s facing entity @p[tag=Attacker] feet rotated ~ ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument
