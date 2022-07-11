#> asset:spawner/732/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-95,Y:220,Z:-50}] in overworld positioned -95 220 -50 if entity @p[distance=..40] run function asset:island/732/register/register