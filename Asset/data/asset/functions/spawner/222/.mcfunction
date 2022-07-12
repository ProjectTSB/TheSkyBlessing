#> asset:spawner/222/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-104,Y:93,Z:254}] in overworld positioned -104 93 254 if entity @p[distance=..40] run function asset:spawner/222/register