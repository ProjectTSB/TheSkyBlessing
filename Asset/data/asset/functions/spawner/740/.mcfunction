#> asset:spawner/740/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-80,Y:188,Z:-28}] in overworld positioned -80 188 -28 if entity @p[distance=..40] run function asset:island/740/register/register