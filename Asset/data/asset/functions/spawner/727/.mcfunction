#> asset:spawner/727/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-212,Y:85,Z:205}] in overworld positioned -212 85 205 if entity @p[distance=..40] run function asset:spawner/727/register