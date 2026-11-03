#> api:entity/player/is_believe/none
#
# 実行プレイヤーがどの神も信仰していなければ成功を返します
#
# @input as player
# @output success どの神も信仰していない
# @api

return run execute if entity @s[tag=Believe.None]
