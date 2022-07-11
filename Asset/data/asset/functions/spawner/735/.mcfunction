#> asset:spawner/735/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-102,Y:212,Z:-53}] in overworld positioned -102 212 -53 if entity @p[distance=..40] run function asset:island/735/register/register