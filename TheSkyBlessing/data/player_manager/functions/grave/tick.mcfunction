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
    execute on passengers if entity @s[type=interaction] on target if entity @s[tag=IDTarget] as @e[type=item_display,tag=Grave,sort=nearest,limit=1] run function player_manager:grave/intract

# 乗っているエンティティが殴られたら
    execute on passengers if entity @s[type=interaction] on attacker if entity @s[tag=IDTarget] as @e[type=item_display,tag=Grave,sort=nearest,limit=1] run function player_manager:grave/punch

# 名前表示
    execute on passengers if entity @s[type=armor_stand] if entity @a[tag=IDTarget,distance=..3] run data modify entity @s CustomNameVisible set value 1b
    execute on passengers if entity @s[type=armor_stand] unless entity @a[tag=IDTarget,distance=..3] run data modify entity @s CustomNameVisible set value 0b

# リセット
    tag @a[tag=IDTarget] remove IDTarget