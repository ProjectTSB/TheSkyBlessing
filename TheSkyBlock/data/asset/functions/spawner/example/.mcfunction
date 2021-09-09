#> asset:spawner/example/
#
# スポナーの登録処理
#
# @within tag/function asset:spawner/register

execute positioned 8 8 8 unless entity @e[type=marker,tag=Spawner,distance=..0.1] run function asset:spawner/example/register