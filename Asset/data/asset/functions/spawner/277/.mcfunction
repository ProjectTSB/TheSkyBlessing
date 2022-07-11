#> asset:spawner/277/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-182,Y:221,Z:4}] in overworld positioned -182 221 4 if entity @p[distance=..40] run function asset:island/277/register/register