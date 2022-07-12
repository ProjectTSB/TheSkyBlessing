#> asset:spawner/290/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-59,Y:165,Z:-151}] in overworld positioned -59 165 -151 if entity @p[distance=..40] run function asset:spawner/290/register