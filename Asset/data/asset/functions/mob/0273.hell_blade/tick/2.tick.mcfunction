#> asset:mob/0273.hell_blade/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0273.hell_blade/tick/1.trigger

# 移動
    execute at @s[tag=!7L.Fall] if score @s 7L.Timer matches 0..3 run function asset:mob/0273.hell_blade/move/

# 攻撃
    execute at @s[tag=!7L.Fall] if entity @p[tag=!PlayerShouldInvulnerable,distance=..0.8] run function asset:mob/0273.hell_blade/attack

# 曲がる
    execute at @s[tag=!7L.Fall] if score @s 7L.Timer matches ..-1 run function asset:mob/0273.hell_blade/chase/rotate/

# 落ちるかどうかチェック
    execute at @s[tag=!7L.Fall] if score @s 7L.Timer matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 run function asset:mob/0273.hell_blade/unstuck/

# ブロック破壊
    execute at @s[tag=7L.FaceFloor,tag=!7L.Fall] if score @s 7L.Timer matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ run function asset:mob/0273.hell_blade/break
    execute at @s[tag=7L.FaceWallUp,tag=!7L.Fall] if score @s 7L.Timer matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 run function asset:mob/0273.hell_blade/break
    execute at @s[tag=7L.FaceWallDown,tag=!7L.Fall] if score @s 7L.Timer matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 run function asset:mob/0273.hell_blade/break
    execute at @s[tag=7L.FaceCeiling,tag=!7L.Fall] if score @s 7L.Timer matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ run function asset:mob/0273.hell_blade/break

# 落下タグがついているなら
    execute at @s[tag=7L.Fall] run function asset:mob/0273.hell_blade/fall
