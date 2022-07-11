#> asset:spawner/211/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-102,Y:22,Z:256}] in overworld positioned -102 22 256 if entity @p[distance=..40] run function asset:spawner/211/register