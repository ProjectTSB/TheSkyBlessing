#> asset:spawner/255/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-139,Y:52,Z:-24}] in overworld positioned -139 52 -24 if entity @p[distance=..40] run function asset:island/255/register/register