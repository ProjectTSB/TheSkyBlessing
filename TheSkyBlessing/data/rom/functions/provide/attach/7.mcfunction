#> rom:provide/attach/7
#
# 7 層目から深い層へ、今回のアドレスのオフセット要素を付ける
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function rom:provide

# 呼び出し元で割った 2 つのアドレスを、please の引数から今回のアドレスに戻す
    execute store result score $LatestProvidedAddress Global run data get storage api: Argument.Address
    scoreboard players operation $Address Temporary = $LatestProvidedAddress Global
# 7 層目の桁を最上位 2bit に寄せる
    scoreboard players operation $Address Temporary *= $268435456 Const

# 上位2bitを元にオフセット要素を 7 層目から深い層へ付ける
# 初めて使う枝の空のリストには insert 4 が失敗し、オフセット要素は付かない
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyLists[]
    scoreboard players operation $Address Temporary *= $4 Const
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyMaps[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyMaps[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyMaps[]

# 途中に初めて使う枝があって窓が無ければ、初期化しながら全部の層を付け直す
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4] run function rom:provide/full
