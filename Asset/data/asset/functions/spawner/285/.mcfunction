#> asset:spawner/285/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:163,Y:82,Z:-94}] in overworld positioned 163 82 -94 if entity @p[distance=..40] run function asset:spawner/285/register