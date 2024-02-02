#> player_manager:grave/tick
#
# お墓のTick処理
#
# @within function core:tick/

#> ID所持者を特定
#@private
#declare tag IDTarget


# 持ち主を特定
    execute at @a[distance=..100] if score @s GraveID = @p UserID run tag @p add IDTarget

# 乗っているエンティティが触られたら
    execute on passengers on target if entity @s[tag=IDTarget] as @e[type=armor_stand,tag=Grave,sort=nearest,limit=1] run function player_manager:grave/intract

# 右クリックで破壊する表示をする
    execute if entity @a[tag=IDTarget,distance=..3] run data modify entity @s CustomNameVisible set value 1b
    execute unless entity @a[tag=IDTarget,distance=..3] run data modify entity @s CustomNameVisible set value 0b

# リセット
    tag @a[tag=IDTarget] remove IDTarget