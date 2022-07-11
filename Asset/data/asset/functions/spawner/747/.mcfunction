#> asset:spawner/747/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-100,Y:17,Z:27}] in overworld positioned -100 17 27 if entity @p[distance=..40] run function asset:island/747/register/register