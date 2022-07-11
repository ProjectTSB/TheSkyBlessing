#> asset:spawner/742/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-104,Y:196,Z:-25}] in overworld positioned -104 196 -25 if entity @p[distance=..40] run function asset:spawner/742/register