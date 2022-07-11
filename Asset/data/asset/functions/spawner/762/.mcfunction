#> asset:spawner/762/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:205,Y:172,Z:-200}] in overworld positioned 205 172 -200 if entity @p[distance=..40] run function asset:spawner/762/register