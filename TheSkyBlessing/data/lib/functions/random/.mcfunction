#> lib:random/
#
# 0-65534の乱数を返します。
#
# @output result score uShort
# @api

scoreboard players operation $Random.Base Global *= $31743 Const
scoreboard players operation $Random.Base Global += $Random.Carry Global
scoreboard players operation $Random.Carry Global = $Random.Base Global
scoreboard players operation $Random.Carry Global /= $65536 Const
scoreboard players operation $Random.Base Global %= $65536 Const

return run scoreboard players get $Random.Base Global