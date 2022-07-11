#> asset:spawner/021/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-100,Y:17,Z:27}] in overworld positioned -100 17 27 if entity @p[distance=..40] run function asset:spawner/021/register