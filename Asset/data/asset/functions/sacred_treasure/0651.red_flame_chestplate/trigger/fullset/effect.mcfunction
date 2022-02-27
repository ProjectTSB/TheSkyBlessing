#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/effect
#
#
#
# @within function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/schedule_loop

# ダッシュ時
    execute if predicate lib:is_sprinting run effect give @s speed 1 2 true
    execute if predicate lib:is_sprinting run particle flame ~ ~ ~ 0 0 0 0.05 3
    execute if predicate lib:is_sprinting if predicate lib:random_pass_per/70 run particle cloud ~ ~ ~ 0 0 0 0.05 3

# 演出
    particle dust 1 0 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 1

# 発動中、一定間隔でレーザー放射
    scoreboard players add @s I3.BeamCool 1
    execute if score @s I3.BeamCool matches 60.. positioned ~ ~3 ~ if entity @e[type=#lib:living,tag=Enemy,distance=..15,sort=nearest,limit=1] facing entity @e[type=#lib:living,tag=Enemy,distance=..15,sort=nearest,limit=1] eyes run function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/beam/beam_ready
# もし発動しなかったらスコア戻す
    execute if score @s I3.BeamCool matches 60.. run scoreboard players reset @s I3.BeamCool