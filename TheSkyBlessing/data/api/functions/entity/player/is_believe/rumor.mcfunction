#> api:entity/player/is_believe/rumor
#
# 実行プレイヤーが Rumor を信仰していれば成功を返します
#
# @input as player
# @output success Rumor を信仰している
# @api

return run execute if entity @s[tag=Believe.Rumor]
