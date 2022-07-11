#> asset:spawner/008/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-46,Y:14,Z:42}] in overworld positioned -46 14 42 if entity @p[distance=..40] run function asset:island/008/register/register