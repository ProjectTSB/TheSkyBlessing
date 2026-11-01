#> rom:provide
#
# 前回提供したアドレスと上の桁が同じ層はオフセット要素をそのままにし、桁が変わった層から深い層だけを付け替える
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function api:rom/please

# 前回のアドレスを取り出し、今回のアドレスを保存する
    scoreboard players operation $PreviousAddress Temporary = $LatestProvidedAddress Global
    scoreboard players operation $LatestProvidedAddress Global = $Address Temporary

# どちらかが 0..4095 の外なら、全部の層を付け直す
# ponytail: 4096 以上のアドレスは上の桁を比べずに毎回全部の層を付け直す。4096 以上を毎 tick 引く Asset が増えたら、1・2 層目も比べる
    execute unless score $PreviousAddress Temporary matches 0..4095 run return run function rom:provide/full
    execute unless score $Address Temporary matches 0..4095 run return run function rom:provide/full

# 4096 未満どうしは 1・2 層目の桁がどちらも 0 なので、3 層目の桁を最上位 2bit に寄せて比べ始める
    scoreboard players operation $PreviousAddress Temporary *= $1048576 Const
    scoreboard players operation $Address Temporary *= $1048576 Const

# 3 層目の桁が前回と違えば、3 層目から付け替える
    execute if score $PreviousAddress Temporary matches 0..1073741823 unless score $Address Temporary matches 0..1073741823 run return run function rom:provide/from/3
    execute if score $PreviousAddress Temporary matches 1073741824.. unless score $Address Temporary matches 1073741824.. run return run function rom:provide/from/3
    execute if score $PreviousAddress Temporary matches ..-1073741825 unless score $Address Temporary matches ..-1073741825 run return run function rom:provide/from/3
    execute if score $PreviousAddress Temporary matches -1073741824..-1 unless score $Address Temporary matches -1073741824..-1 run return run function rom:provide/from/3
    scoreboard players operation $PreviousAddress Temporary *= $4 Const
    scoreboard players operation $Address Temporary *= $4 Const

# 4 層目の桁が前回と違えば、4 層目から付け替える
    execute if score $PreviousAddress Temporary matches 0..1073741823 unless score $Address Temporary matches 0..1073741823 run return run function rom:provide/from/4
    execute if score $PreviousAddress Temporary matches 1073741824.. unless score $Address Temporary matches 1073741824.. run return run function rom:provide/from/4
    execute if score $PreviousAddress Temporary matches ..-1073741825 unless score $Address Temporary matches ..-1073741825 run return run function rom:provide/from/4
    execute if score $PreviousAddress Temporary matches -1073741824..-1 unless score $Address Temporary matches -1073741824..-1 run return run function rom:provide/from/4
    scoreboard players operation $PreviousAddress Temporary *= $4 Const
    scoreboard players operation $Address Temporary *= $4 Const

# 5 層目の桁が前回と違えば、5 層目から付け替える
    execute if score $PreviousAddress Temporary matches 0..1073741823 unless score $Address Temporary matches 0..1073741823 run return run function rom:provide/from/5
    execute if score $PreviousAddress Temporary matches 1073741824.. unless score $Address Temporary matches 1073741824.. run return run function rom:provide/from/5
    execute if score $PreviousAddress Temporary matches ..-1073741825 unless score $Address Temporary matches ..-1073741825 run return run function rom:provide/from/5
    execute if score $PreviousAddress Temporary matches -1073741824..-1 unless score $Address Temporary matches -1073741824..-1 run return run function rom:provide/from/5
    scoreboard players operation $PreviousAddress Temporary *= $4 Const
    scoreboard players operation $Address Temporary *= $4 Const

# 6 層目の桁が前回と違えば、6 層目から付け替える
    execute if score $PreviousAddress Temporary matches 0..1073741823 unless score $Address Temporary matches 0..1073741823 run return run function rom:provide/from/6
    execute if score $PreviousAddress Temporary matches 1073741824.. unless score $Address Temporary matches 1073741824.. run return run function rom:provide/from/6
    execute if score $PreviousAddress Temporary matches ..-1073741825 unless score $Address Temporary matches ..-1073741825 run return run function rom:provide/from/6
    execute if score $PreviousAddress Temporary matches -1073741824..-1 unless score $Address Temporary matches -1073741824..-1 run return run function rom:provide/from/6
    scoreboard players operation $PreviousAddress Temporary *= $4 Const
    scoreboard players operation $Address Temporary *= $4 Const

# 7 層目の桁が前回と違えば、7 層目から付け替える
    execute if score $PreviousAddress Temporary matches 0..1073741823 unless score $Address Temporary matches 0..1073741823 run return run function rom:provide/from/7
    execute if score $PreviousAddress Temporary matches 1073741824.. unless score $Address Temporary matches 1073741824.. run return run function rom:provide/from/7
    execute if score $PreviousAddress Temporary matches ..-1073741825 unless score $Address Temporary matches ..-1073741825 run return run function rom:provide/from/7
    execute if score $PreviousAddress Temporary matches -1073741824..-1 unless score $Address Temporary matches -1073741824..-1 run return run function rom:provide/from/7
    scoreboard players operation $Address Temporary *= $4 Const

# 7 層目まで同じなら、8 層目の桁が違う
    function rom:provide/from/8
