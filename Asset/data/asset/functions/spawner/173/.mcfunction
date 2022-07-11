#> asset:spawner/173/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-83,Y:213,Z:247}] in overworld positioned -83 213 247 if entity @p[distance=..40] run function asset:island/173/register/register