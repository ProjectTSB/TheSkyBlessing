#> world_manager:gimmick/teleporter/dynamic_register/do
#
#
#
# @within function world_manager:gimmick/teleporter/dynamic_register/

# TODO dynamic_registerをapi:に移す
# Argument{Color?: Enum, Group: string}みたいなのを用意する
# 実行座標を登録するぜ

tp @s ~ ~ ~
data modify storage world_manager:gimmick TeleporterData append value {}
data modify storage world_manager:gimmick TeleporterData[-1].Pos set from entity @s Pos
tp @s 0.0 0.0 0.0