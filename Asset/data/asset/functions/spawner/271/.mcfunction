#> asset:spawner/271/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-188,Y:103,Z:107}] in overworld positioned -188 103 107 if entity @p[distance=..40] run function asset:island/271/register/register