#> lib:reflection_bullet/
#
# 実行entityをブロックで反射する軌道で前進させます
#
# @input args
#   as entity
#   position
#   rotation
#   score $Speed Lib 前進させたい距離(m)の10倍
#
# @api
#
#> temp
# @within function lib:reflection_bullet/**
    #declare score_holder $Speed Lib
    #declare score_holder $ReflectionBullet.Loop Temporary

# 引数コピー
    scoreboard players operation $ReflectionBullet.Loop Temporary = $Speed Lib
# ループ開始
    execute if score $ReflectionBullet.Loop Temporary matches 1.. run function lib:reflection_bullet/core/loop
# 後片付け
    scoreboard players reset $ReflectionBullet.Loop Temporary
    scoreboard players reset $Speed Lib
