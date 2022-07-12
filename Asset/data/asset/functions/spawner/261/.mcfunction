#> asset:spawner/261/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:96,Y:151,Z:-113}] in overworld positioned 96 151 -113 if entity @p[distance=..40] run function asset:spawner/261/register