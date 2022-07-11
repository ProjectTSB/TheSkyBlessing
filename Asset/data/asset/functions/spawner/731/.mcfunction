#> asset:spawner/731/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-102,Y:224,Z:-46}] in overworld positioned -102 224 -46 if entity @p[distance=..40] run function asset:island/731/register/register