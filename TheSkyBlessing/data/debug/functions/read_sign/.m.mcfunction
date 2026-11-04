#> debug:read_sign/.m
#
# 実行座標の看板に書かれた文字列を storage debug:read_sign Data 内に書き写します。
#
# 引数が必要なマクロ関数をコマンドブロックで実行する時にちょっと便利です。
# 例: function マクロ関数 with storage debug:read_sign Data
#
# @input args Path : [string] @ 1..4
# @output storage debug:read_sign Data
# @private
# @user

#> 書き写すstorage
# @within function debug:read_sign/**
# @user
    #declare storage debug:read_sign

# リセット
    data remove storage debug:read_sign Data

# 引数
    $data modify storage debug:read_sign Path set value $(Path)
# 書き写し
    execute if data storage debug:read_sign Path[0] run data modify storage debug:read_sign Args.Path set from storage debug:read_sign Path[0]
    execute if data storage debug:read_sign Path[0] run data modify storage debug:read_sign Args.Line set value 0
    execute if data storage debug:read_sign Path[0] run function debug:read_sign/core/.m with storage debug:read_sign Args
    execute if data storage debug:read_sign Path[1] run data modify storage debug:read_sign Args.Path set from storage debug:read_sign Path[1]
    execute if data storage debug:read_sign Path[1] run data modify storage debug:read_sign Args.Line set value 1
    execute if data storage debug:read_sign Path[1] run function debug:read_sign/core/.m with storage debug:read_sign Args
    execute if data storage debug:read_sign Path[2] run data modify storage debug:read_sign Args.Path set from storage debug:read_sign Path[2]
    execute if data storage debug:read_sign Path[2] run data modify storage debug:read_sign Args.Line set value 2
    execute if data storage debug:read_sign Path[2] run function debug:read_sign/core/.m with storage debug:read_sign Args
    execute if data storage debug:read_sign Path[3] run data modify storage debug:read_sign Args.Path set from storage debug:read_sign Path[3]
    execute if data storage debug:read_sign Path[3] run data modify storage debug:read_sign Args.Line set value 3
    execute if data storage debug:read_sign Path[3] run function debug:read_sign/core/.m with storage debug:read_sign Args

# リセット
    data remove storage debug:read_sign Path
    data remove storage debug:read_sign Args
