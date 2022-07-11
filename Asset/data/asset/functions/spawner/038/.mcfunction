#> asset:spawner/038/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:216,Y:12,Z:-61}] in overworld positioned 216 12 -61 if entity @p[distance=..40] run function asset:island/038/register/register