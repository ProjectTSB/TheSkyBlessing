#> asset:spawner/145/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:22,Y:48,Z:254}] in overworld positioned 22 48 254 if entity @p[distance=..40] run function asset:island/145/register/register