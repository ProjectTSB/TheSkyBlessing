#> asset_manager:teleporter/tick/star_init/summon
#
#
#
# @within function asset_manager:teleporter/tick/star_init/summon_once

# 対象のテレポーターを移す
    data modify storage asset:teleporter TargetTeleporter set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1]
# 汎用entityを現地へ
    data modify entity @s Pos set from storage asset:teleporter TargetTeleporter.Pos
# プレイヤーからその方向の 1.5 ブロック先に星を召喚する
    execute unless entity @s[distance=..15] facing entity @s feet run summon item_display ^ ^ ^1.5 {Tags:["TPStar","TPStarInit"]}
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1.5 as @e[type=item_display,tag=TPStarInit,distance=..0.01,limit=1] run function asset_manager:teleporter/tick/star_init/set_data
# 原点へお帰り
    execute in overworld run tp @s 0.0 0.0 0.0
# リセット
    data remove storage asset:teleporter TargetTeleporter
