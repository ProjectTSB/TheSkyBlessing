#> asset:mob/0104.mad_scientist/hurt/3.teleport
#
# 殺意全開ぶっ殺す攻撃
#
# @within function asset:mob/0104.mad_scientist/hurt/2.hurt
#> Private
# @private
    #declare tag SpreadMarker

# ワープ
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 3.633d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=Attacker] rotated ~ 90 run function lib:forward_spreader/circle
    execute at @p[tag=Attacker] positioned ~ ~6 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^6 run tp @s ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]

# 斧を持ち出してくる
   item replace entity @s weapon.mainhand with netherite_axe

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute at @s facing entity @p[tag=Attacker] feet rotated ~ ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument
