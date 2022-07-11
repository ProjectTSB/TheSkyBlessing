#> asset:spawner/183/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:229,Y:142,Z:-31}] in overworld positioned 229 142 -31 if entity @p[distance=..40] run function asset:spawner/183/register