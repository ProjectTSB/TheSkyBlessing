#> asset:spawner/279/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-185,Y:210,Z:4}] in overworld positioned -185 210 4 if entity @p[distance=..40] run function asset:island/279/register/register