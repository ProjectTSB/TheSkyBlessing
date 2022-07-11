#> asset:spawner/224/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:182,Y:85,Z:-102}] in overworld positioned 182 85 -102 if entity @p[distance=..40] run function asset:spawner/224/register