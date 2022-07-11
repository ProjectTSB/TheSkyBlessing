#> asset:spawner/225/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:171,Y:73,Z:-122}] in overworld positioned 171 73 -122 if entity @p[distance=..40] run function asset:spawner/225/register