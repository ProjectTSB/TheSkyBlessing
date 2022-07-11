#> asset:spawner/025/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-136,Y:41,Z:79}] in overworld positioned -136 41 79 if entity @p[distance=..40] run function asset:island/025/register/register