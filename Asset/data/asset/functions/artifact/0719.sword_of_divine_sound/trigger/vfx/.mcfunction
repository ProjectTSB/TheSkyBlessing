#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/
#
# vfx
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/3.main

# 音
    playsound item.trident.thunder player @a ~ ~ ~ 0.5 1.7 0
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.6 1.2 0

# 円状のパーティクル
    function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/circle

# 演出用スコアのリセット
    scoreboard players reset $RecursiveLimit Temporary

# 雷っぽいパーティクル
    execute rotated ~ -80 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
    execute rotated ~72 -80 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
    execute rotated ~144 -80 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
    execute rotated ~216 -80 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
    execute rotated ~288 -80 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning