#> asset:spawner/329/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:318,Y:172,Z:280}] in overworld positioned 318 172 280 if entity @p[distance=..40] run function asset:island/329/register/register