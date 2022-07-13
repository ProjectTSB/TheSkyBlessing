#> asset:spawner/284/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:178,Y:73,Z:-100}] in overworld positioned 178 73 -100 if entity @p[distance=..40] run function asset:spawner/284/register