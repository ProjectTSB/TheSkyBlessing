#> asset:spawner/281/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-196,Y:194,Z:-12}] in overworld positioned -196 194 -12 if entity @p[distance=..40] run function asset:island/281/register/register