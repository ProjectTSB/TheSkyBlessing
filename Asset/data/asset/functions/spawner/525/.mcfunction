#> asset:spawner/525/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:82,Y:31,Z:149}] in overworld positioned 82 31 149 if entity @p[distance=..40] run function asset:island/525/register/register