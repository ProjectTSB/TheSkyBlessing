#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/beam/beam_ready
#
#
#
# @within function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/effect

# 頭の上にパーティクルを出す
    execute rotated ~ 90 run function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/paticle

# 発砲
    function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/beam/shoot
# リセット
    tag @s remove Landing
    scoreboard players reset @s I3.BeamCool
