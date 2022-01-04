#> world_manager:gimmick/teleporter/active/init/star/foreach
#
#
#
# @within function
#   world_manager:gimmick/teleporter/active/init/
#   world_manager:gimmick/teleporter/active/init/star/foreach

# { Pos: [double, double, double], Data: { Activate: boolean } }[]

# 汎用entityを現地へ
    data modify entity @s Pos set from storage world_manager:gimmick Targets[-1].Pos
# プレイヤーからその方向の1ブロック先に星を召喚する
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["TPStar"]}
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1 as @e[type=marker,tag=TPStar,distance=0.01,limit=1] run function world_manager:gimmick/teleporter/active/init/star/set_data
# 末尾削除
    data remove storage world_manager:gimmick Targets[-1]
# 原点へお帰り
    tp @s 0.0 0.0 0.0
# まだ要素があるなら再帰
    execute if data storage world_manager:gimmick Targets[0] run function world_manager:gimmick/teleporter/active/init/star/foreach