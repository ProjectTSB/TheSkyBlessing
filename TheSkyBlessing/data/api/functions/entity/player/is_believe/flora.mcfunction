#> api:entity/player/is_believe/flora
#
# 実行プレイヤーが Flora を信仰していれば成功を返します
#
# @input as player
# @output success Flora を信仰している
# @api

return run execute if entity @s[tag=Believe.Flora]
