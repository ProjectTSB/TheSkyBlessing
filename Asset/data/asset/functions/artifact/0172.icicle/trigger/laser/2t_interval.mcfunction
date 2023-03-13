#> asset:artifact/0172.icicle/trigger/laser/2t_interval
#
#
#
# @within function asset:artifact/0172.icicle/trigger/laser/1.laser

# 一段目展開
    execute if score @s 4S.Time matches 30.. positioned ~ ~5 ~ rotated 0 0 run function asset:artifact/0172.icicle/trigger/laser/particle
# 二段目展開
    execute if score @s 4S.Time matches 40.. positioned ~ ~10 ~ rotated 0 0 run function asset:artifact/0172.icicle/trigger/laser/particle2
# 三段目展開
    execute if score @s 4S.Time matches 50.. positioned ~ ~17 ~ rotated ~ 0 run function asset:artifact/0172.icicle/trigger/laser/particle3
# 放射
    execute if score @s 4S.Time matches 110.. run particle snowflake ~ ~7.5 ~ 1 7 1 0 30
    execute if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:artifact/0172.icicle/trigger/laser/3.laser_circle
    execute if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:artifact/0172.icicle/trigger/laser/4.laser_line

# タグ消し
    tag @s remove Landing