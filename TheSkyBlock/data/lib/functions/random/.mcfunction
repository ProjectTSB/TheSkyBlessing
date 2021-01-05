#> lib:random/
# @output
# @output
#   **score $Return.Random Lib**
#   乱数 (uShort 0-65534)
# @api

#> Private
# @private
    #declare score_holder $Return.Random

scoreboard players operation $Random.Base Global *= $31743 Const
scoreboard players operation $Random.Base Global += $Random.Curray Global
scoreboard players operation $Random.Curray Global = $Random.Base Global
scoreboard players operation $Random.Curray Global /= $65535 Const
scoreboard players operation $Random.Base Global %= $65535 Const

scoreboard players operation $Return.Random Lib = $Random.Base Global