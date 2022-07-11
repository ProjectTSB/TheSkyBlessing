#> asset:spawner/300/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-62,Y:175,Z:-196}] in overworld positioned -62 175 -196 if entity @p[distance=..40] run function asset:spawner/300/register