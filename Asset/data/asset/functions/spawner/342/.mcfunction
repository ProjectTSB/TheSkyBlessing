#> asset:spawner/342/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:56,Y:167,Z:413}] in overworld positioned 56 167 413 if entity @p[distance=..40] run function asset:island/342/register/register