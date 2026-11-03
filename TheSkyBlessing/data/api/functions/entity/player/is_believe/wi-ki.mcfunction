#> api:entity/player/is_believe/wi-ki
#
# 実行プレイヤーが Wi-ki を信仰していれば成功を返します
#
# @input as player
# @output success Wi-ki を信仰している
# @api

return run execute if entity @s[tag=Believe.Wi-ki]
