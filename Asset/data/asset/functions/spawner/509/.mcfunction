#> asset:spawner/509/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:84,Y:25,Z:161}] in overworld positioned 84 25 161 if entity @p[distance=..40] run function asset:island/509/register/register