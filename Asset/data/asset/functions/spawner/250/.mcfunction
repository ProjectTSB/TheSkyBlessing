#> asset:spawner/250/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-119,Y:57,Z:-25}] in overworld positioned -119 57 -25 if entity @p[distance=..40] run function asset:island/250/register/register