#> asset:spawner/349/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:37,Y:223,Z:105}] in overworld positioned 37 223 105 if entity @p[distance=..40] run function asset:island/349/register/register