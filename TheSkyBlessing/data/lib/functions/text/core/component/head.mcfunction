#> lib:text/core/component/head
# @within function
#   lib:text/core/component/collect
#   lib:text/core/component/head

# 入れ子配列の先頭を辿り、兄弟へ継承する装飾の参照先を決める
    data modify storage lib:text Component.Head set from storage lib:text Component.Head[0]
    execute if data storage lib:text Component.Head[0] run function lib:text/core/component/head
