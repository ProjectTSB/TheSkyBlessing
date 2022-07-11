#> asset:spawner/723/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-222,Y:110,Z:258}] in overworld positioned -222 110 258 if entity @p[distance=..40] run function asset:island/723/register/register