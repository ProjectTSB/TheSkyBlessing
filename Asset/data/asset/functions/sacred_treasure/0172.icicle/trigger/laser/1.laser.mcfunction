#> asset:sacred_treasure/0172.icicle/trigger/laser/1.laser
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/schedule

#> private
# @private
    #declare score_holder $4tInterval

# スコア加算
    scoreboard players add @s 4S.Time 1

# パーティクル
    execute if score @s 4S.Time matches 10..110 run particle end_rod ~ ~15 ~ 0 -1 0 4 0
# 一段目展開
    execute if score @s 4S.Time matches 30 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 2
    execute if score @s 4S.Time matches 30.. positioned ~ ~5 ~ rotated 0 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle
# 二段目展開
    execute if score @s 4S.Time matches 40 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 1
    execute if score @s 4S.Time matches 40.. positioned ~ ~10 ~ rotated 0 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle2
# 三段目展開
    execute if score @s 4S.Time matches 50 run playsound entity.puffer_fish.death player @a ~ ~ ~ 1 0
    execute if score @s 4S.Time matches 50.. positioned ~ ~17 ~ rotated ~ 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle3

# ばちばちする
    execute if score @s 4S.Time matches 60 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 73 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 85 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 87..110 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing

# 放射
    execute if score @s 4S.Time matches 110.. run particle snowflake ~ ~7.5 ~ 1 7 1 0 30
    execute if score @s 4S.Time matches 110 run particle end_rod ~ ~15 ~ 0 0 0 1 400
    execute if score @s 4S.Time matches 110 run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1
    execute if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/3.laser_circle
    execute if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/4.laser_line

# タグ消し
    execute if score @s 4S.Time matches 110.. run tag @s remove Landing

# 4tickおきにダメージ実行
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 4S.Time
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
    execute if score $4tInterval Temporary matches 0 if score @s 4S.Time matches 110.. positioned ~ ~15 ~ rotated 0 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser
# リセット
    scoreboard players reset $4tInterval


# 回転
    tp @s ~ ~ ~ ~3 ~
# タグ消し
    tag @s remove Landing