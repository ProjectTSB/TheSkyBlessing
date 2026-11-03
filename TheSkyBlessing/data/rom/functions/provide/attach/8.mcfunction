#> rom:provide/attach/8
#
# 8 層目から深い層へ、今回のアドレスのオフセット要素を付ける
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function rom:provide

# 呼び出し元で割った 2 つのアドレスを、please の引数から今回のアドレスに戻す
    execute store result score $LatestProvidedAddress Global run data get storage api: Argument.Address
    scoreboard players operation $Address Temporary = $LatestProvidedAddress Global
# 8 層目の桁を最上位 2bit に寄せる
    scoreboard players operation $Address Temporary *= $1073741824 Const

# 上位2bitを元にオフセット要素を 8 層目から深い層へ付ける
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyMaps[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyMaps[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyMaps[]
