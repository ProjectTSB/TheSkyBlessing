#> asset:spawner/280/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-180,Y:201,Z:3}] in overworld positioned -180 201 3 if entity @p[distance=..40] run function asset:island/280/register/register