#> asset:mob/0262.frestchika/tick/move/teleport_check
#
# このモブがテレポートするにふさわしい条件かみる
#
# @within function asset:mob/0262.frestchika/tick/**

# 30%で確定でテレポートタグを付与
    execute if predicate lib:random_pass_per/30 run tag @s add CanTeleport
# プレイヤーがブロックの向こう側にいる場合テレポートタグを付与、また距離でも付与
    execute positioned ~ ~1 ~ facing entity @p feet run function asset:mob/0262.frestchika/tick/move/block_check
    execute unless entity @s[tag=PlayerCheck] run tag @s add CanTeleport

# 上記のいずれかい当てはまった場合テレポート
    execute if entity @s[tag=CanTeleport] run function asset:mob/0262.frestchika/tick/move/spread
    execute if entity @s[tag=CanTeleport] at @s run function asset:mob/0262.frestchika/tick/move/vfx
# タグ消し
    tag @s remove PlayerCheck
    tag @s remove CanTeleport