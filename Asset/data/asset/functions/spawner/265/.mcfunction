#> asset:spawner/265/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-175,Y:134,Z:96}] in overworld positioned -175 134 96 if entity @p[distance=..40] run function asset:island/265/register/register