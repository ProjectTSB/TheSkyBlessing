#> api:entity/player/is_believe/urban
#
# 実行プレイヤーが Urban を信仰していれば成功を返します
#
# @input as player
# @output success Urban を信仰している
# @api

return run execute if entity @s[tag=Believe.Urban]
