#> asset_manager:teleporter/star_init/summon
#
#
#
# @within function asset_manager:teleporter/star_init/foreach

# 汎用entityを現地へ
    data modify entity @s Pos set from storage asset:teleporter Teleporters[-1].Pos
# プレイヤーからその方向の1ブロック先に星を召喚する
    execute unless entity @s[distance=..15] facing entity @s feet run summon marker ^ ^ ^1.5 {Tags:["TPStar","TPStarInit"]}
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1.5 as @e[type=marker,tag=TPStarInit,distance=..0.01,limit=1] run function asset_manager:teleporter/star_init/set_data
# 原点へお帰り
    tp @s 0.0 0.0 0.0