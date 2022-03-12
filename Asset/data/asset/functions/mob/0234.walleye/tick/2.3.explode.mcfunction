#> asset:mob/0234.walleye/tick/2.3.explode
#
# @within
#   function asset:mob/0234.walleye/tick/

# 音とパーティクル
execute at @s run playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 1 1
execute at @s run particle large_smoke ~ ~ ~ 2 2 2 0 1000 normal
execute at @s run particle flame ~ ~ ~ 2 2 2 0 1000 normal

kill @s