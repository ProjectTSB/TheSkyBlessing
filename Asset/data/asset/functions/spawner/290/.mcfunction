#> asset:spawner/290/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-196,Y:117,Z:257}] in overworld positioned -196 117 257 if entity @p[distance=..40] run function asset:island/290/register/register