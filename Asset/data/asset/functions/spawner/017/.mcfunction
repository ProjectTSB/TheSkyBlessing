#> asset:spawner/017/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-129,Y:27,Z:86}] in overworld positioned -129 27 86 if entity @p[distance=..40] run function asset:island/017/register/register