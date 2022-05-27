#> world_manager:gimmick/teleporter/init/star/summon
#
#
#
# @within function world_manager:gimmick/teleporter/init/star/foreach

# 汎用entityを現地へ
    data modify entity @s Pos set from storage world_manager:gimmick Teleporters[-1].Pos
# プレイヤーからその方向の1ブロック先に星を召喚する
    execute unless entity @s[distance=..15] facing entity @s feet run summon marker ^ ^ ^1.5 {Tags:["TPStar","TPStarInit"]}
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1.5 as @e[type=marker,tag=TPStarInit,distance=..0.01,limit=1] run function world_manager:gimmick/teleporter/init/star/set_data
# 原点へお帰り
    tp @s 0.0 0.0 0.0