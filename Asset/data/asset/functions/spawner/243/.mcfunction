#> asset:spawner/243/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-67,Y:108,Z:-44}] in overworld positioned -67 108 -44 if entity @p[distance=..40] run function asset:island/243/register/register