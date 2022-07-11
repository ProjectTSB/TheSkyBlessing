#> asset:spawner/043/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:123,Y:5,Z:38}] in overworld positioned 123 5 38 if entity @p[distance=..40] run function asset:island/043/register/register