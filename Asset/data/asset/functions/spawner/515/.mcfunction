#> asset:spawner/515/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:92,Y:21,Z:149}] in overworld positioned 92 21 149 if entity @p[distance=..40] run function asset:island/515/register/register