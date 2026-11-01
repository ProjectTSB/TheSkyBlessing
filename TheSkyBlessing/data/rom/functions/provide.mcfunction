#> rom:provide
#
# 前回提供したアドレスと上の桁が同じ層はオフセット要素をそのままにし、桁が変わった層から深い層だけを付け替える
# $LatestProvidedAddress と $Address はその場で割って比べ、rom:provide/attach/* が api: Argument.Address から今回のアドレスに戻す
#
# @input
#   score $Address Temporary : 今回のアドレス
#   storage api: Argument.Address : 今回のアドレス
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function api:rom/please

# 8 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][4]
# 7 層目までの桁が今回と同じなら、8 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/8

# 7 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][4]
# 6 層目までの桁が今回と同じなら、7 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/7

# 6 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][4]
# 5 層目までの桁が今回と同じなら、6 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/6

# 5 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][4]
# 4 層目までの桁が今回と同じなら、5 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/5

# 4 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][4]
# 3 層目までの桁が今回と同じなら、4 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/4

# 3 層目のオフセット要素を外す
    execute if data storage rom: _[-4][-4][6] run data remove storage rom: _[-4][-4][6]
    execute if data storage rom: _[-4][-4][5] run data remove storage rom: _[-4][-4][5]
    data remove storage rom: _[-4][-4][4]
# 2 層目までの桁が今回と同じなら、3 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/3

# 2 層目のオフセット要素を外す
    execute if data storage rom: _[-4][6] run data remove storage rom: _[-4][6]
    execute if data storage rom: _[-4][5] run data remove storage rom: _[-4][5]
    data remove storage rom: _[-4][4]
# 1 層目までの桁が今回と同じなら、2 層目から付ける
    scoreboard players operation $LatestProvidedAddress Global /= $4 Const
    scoreboard players operation $Address Temporary /= $4 Const
    execute if score $LatestProvidedAddress Global = $Address Temporary run return run function rom:provide/attach/2

# 1 層目のオフセット要素を外し、1 層目から付ける
    execute if data storage rom: _[6] run data remove storage rom: _[6]
    execute if data storage rom: _[5] run data remove storage rom: _[5]
    data remove storage rom: _[4]
    function rom:provide/attach/1
