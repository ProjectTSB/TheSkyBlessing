#> asset:spawner/714/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-80,Y:183,Z:-35}] in overworld positioned -80 183 -35 if entity @p[distance=..40] run function asset:island/714/register/register