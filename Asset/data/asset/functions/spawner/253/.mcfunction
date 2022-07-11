#> asset:spawner/253/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-132,Y:57,Z:-25}] in overworld positioned -132 57 -25 if entity @p[distance=..40] run function asset:island/253/register/register