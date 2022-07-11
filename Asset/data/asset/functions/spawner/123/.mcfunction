#> asset:spawner/123/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:206,Y:27,Z:232}] in overworld positioned 206 27 232 if entity @p[distance=..40] run function asset:island/123/register/register