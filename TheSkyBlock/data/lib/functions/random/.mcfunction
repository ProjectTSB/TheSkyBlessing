#> lib:random/
#
# 0-65534の乱数を返します。
#
# @output result score uShort
# @api

scoreboard players operation $Random.Base Global *= $31743 Const
scoreboard players operation $Random.Base Global += $Random.Curray Global
scoreboard players operation $Random.Curray Global = $Random.Base Global
scoreboard players operation $Random.Curray Global /= $65535 Const
scoreboard players operation $Random.Base Global %= $65535 Const

scoreboard players get $Random.Base Global