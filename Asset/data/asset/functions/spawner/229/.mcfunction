#> asset:spawner/229/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-45,Y:165,Z:-151}] in overworld positioned -45 165 -151 if entity @p[distance=..40] run function asset:island/229/register/register