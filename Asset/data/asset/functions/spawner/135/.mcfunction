#> asset:spawner/135/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:172,Y:126,Z:253}] in overworld positioned 172 126 253 if entity @p[distance=..40] run function asset:island/135/register/register