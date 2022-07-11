#> asset:spawner/520/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:92,Y:33,Z:149}] in overworld positioned 92 33 149 if entity @p[distance=..40] run function asset:island/520/register/register