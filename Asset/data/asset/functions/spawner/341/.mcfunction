#> asset:spawner/341/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-191,Y:129,Z:100}] in overworld positioned -191 129 100 if entity @p[distance=..40] run function asset:spawner/341/register