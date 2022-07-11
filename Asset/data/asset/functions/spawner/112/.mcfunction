#> asset:spawner/112/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:172,Y:52,Z:284}] in overworld positioned 172 52 284 if entity @p[distance=..40] run function asset:island/112/register/register