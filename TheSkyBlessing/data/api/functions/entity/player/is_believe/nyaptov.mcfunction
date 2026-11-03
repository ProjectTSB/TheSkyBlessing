#> api:entity/player/is_believe/nyaptov
#
# 実行プレイヤーが Nyaptov を信仰していれば成功を返します
#
# @input as player
# @output success Nyaptov を信仰している
# @api

return run execute if entity @s[tag=Believe.Nyaptov]
