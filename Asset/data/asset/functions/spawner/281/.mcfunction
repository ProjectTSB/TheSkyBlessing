#> asset:spawner/281/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:44,Y:76,Z:-157}] in overworld positioned 44 76 -157 if entity @p[distance=..40] run function asset:spawner/281/register