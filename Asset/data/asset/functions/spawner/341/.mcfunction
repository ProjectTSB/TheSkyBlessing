#> asset:spawner/341/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-12,Y:167,Z:397}] in overworld positioned -12 167 397 if entity @p[distance=..40] run function asset:island/341/register/register