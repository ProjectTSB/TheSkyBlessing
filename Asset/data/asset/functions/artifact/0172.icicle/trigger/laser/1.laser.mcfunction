#> asset:artifact/0172.icicle/trigger/laser/1.laser
#
#
#
# @within function asset:artifact/0172.icicle/trigger/laser/schedule

#> private
# @private
    #declare score_holder $4tInterval
    #declare score_holder $2tInterval

# スコア加算
    scoreboard players add @s 4S.Time 1

# 一段目展開
    execute if score @s 4S.Time matches 30 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 2
# 二段目展開
    execute if score @s 4S.Time matches 40 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 1
# 三段目展開
    execute if score @s 4S.Time matches 50 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 0

# ばちばちする
    execute if score @s 4S.Time matches 60 positioned ~ ~17 ~ rotated ~ 90 run function asset:artifact/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 73 positioned ~ ~17 ~ rotated ~ 90 run function asset:artifact/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 85 positioned ~ ~17 ~ rotated ~ 90 run function asset:artifact/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 87..110 positioned ~ ~17 ~ rotated ~ 90 run function asset:artifact/0172.icicle/trigger/laser/2.laser_directing

# 放射
    execute if score @s 4S.Time matches 110 run particle firework ~ ~15 ~ 0 0 0 1 100
    execute if score @s 4S.Time matches 110 run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1

# 2tickおきにVFX
# 実行時間を移す
    scoreboard players operation $2tInterval Temporary = @s 4S.Time
# 2tickおきに実行
    scoreboard players operation $2tInterval Temporary %= $2 Const
    execute if score $2tInterval Temporary matches 0 run function asset:artifact/0172.icicle/trigger/laser/2t_interval
# リセット
    scoreboard players reset $2tInterval

# 4tickおきにダメージ実行
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 4S.Time
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
# スコアが110以上で動かす
    execute if score $4tInterval Temporary matches 0 if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:artifact/0172.icicle/trigger/laser/5.damage_laser
    execute if score $4tInterval Temporary matches 0 if score @s 4S.Time matches 110.. run tag @s remove Landing
# リセット
    scoreboard players reset $4tInterval

# 回転
    tp @s ~ ~ ~ ~3 ~