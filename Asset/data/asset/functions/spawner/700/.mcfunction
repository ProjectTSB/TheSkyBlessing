#> asset:spawner/700/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:420,Y:142,Z:79}] in overworld positioned 420 142 79 if entity @p[distance=..40] run function asset:island/700/register/register