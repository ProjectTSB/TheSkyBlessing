#> asset:mob/0120.convict/tick/move/conditional_teleport
#
# このモブがテレポートするにふさわしい条件かみる
#
# @within function asset:mob/0120.convict/tick/**

# 30%で確定でテレポートタグを付与
    execute if predicate lib:random_pass_per/30 run tag @s add CanTeleport
# プレイヤーがブロックの向こう側にいる場合テレポートタグを付与、また距離でも付与
    execute positioned ~ ~1 ~ facing entity @p[distance=..8] feet run function asset:mob/0120.convict/tick/move/block_check
    execute unless entity @s[tag=ExistsPassablePlayer] run tag @s add CanTeleport

# 上記のいずれかい当てはまった場合テレポート
    execute if entity @s[tag=CanTeleport] run function asset:mob/0120.convict/tick/move/spread
    execute if entity @s[tag=CanTeleport] at @s run function asset:mob/0120.convict/tick/move/vfx
# タグ消し
    tag @s remove ExistsPassablePlayer
    tag @s remove CanTeleport