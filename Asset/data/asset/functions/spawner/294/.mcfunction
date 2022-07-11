#> asset:spawner/294/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-208,Y:89,Z:246}] in overworld positioned -208 89 246 if entity @p[distance=..40] run function asset:island/294/register/register