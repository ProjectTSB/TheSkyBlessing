#> asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/
#
# vfx
#
# @within function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/3.main

# 音
    playsound item.trident.thunder player @a ~ ~1.2 ~ 0.7 1.7 0

# 円状のパーティクル
    function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/circle

# 演出用スコアのリセット
    scoreboard players reset $RecursiveLimit Temporary

# 雷っぽいパーティクル
    execute rotated ~ -80 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    scoreboard players reset $RecursiveLimit Temporary
    execute rotated ~72 -80 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    scoreboard players reset $RecursiveLimit Temporary
    execute rotated ~144 -80 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    scoreboard players reset $RecursiveLimit Temporary
    execute rotated ~216 -80 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    scoreboard players reset $RecursiveLimit Temporary
    execute rotated ~288 -80 run function asset:sacred_treasure/0719.sword_of_divine_sound/trigger/vfx/lightning
    scoreboard players reset $RecursiveLimit Temporary
