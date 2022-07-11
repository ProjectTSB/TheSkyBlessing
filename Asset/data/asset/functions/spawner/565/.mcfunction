#> asset:spawner/565/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:448,Y:103,Z:115}] in overworld positioned 448 103 115 if entity @p[distance=..40] run function asset:island/565/register/register