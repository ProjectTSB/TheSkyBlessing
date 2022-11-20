#> api:player_modifier/mp_max/add
#
#
#
# @api

#> temp
# @private
    #declare score_holder $DiffMP
    #declare score_holder $NewMaxMP
    #declare score_holder $PrevMaxMP

# データ検証
    function api:player_modifier/core/common/validate
# データ補正
    execute if data storage api: Argument{Operation:"add"} store result storage api: Argument.Amount double 0.01 run data get storage api: Argument.Amount 1
# データが正しいなら入れる
    execute if data storage api: Argument.UUID if data storage api: Argument.Amount if data storage api: Argument.Operation run function api:player_modifier/core/mp_max/add
# 現在MP・MPMaxを取得
    # execute store result score $DiffMP Temporary run scoreboard players get @s MP
    # execute store result score $PrevMaxMP Temporary run scoreboard players get @s MPMax
# MPMaxに代入
    execute store result score @s MPMax run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MPMax 100
# MPを調整
    # execute store result score $NewMaxMP Temporary run scoreboard players get @s MPMax
    # scoreboard players operation $DiffMP Temporary *= $NewMaxMP Temporary
    # scoreboard players operation $DiffMP Temporary /= $PrevMaxMP Temporary
    # execute store result storage api: Argument.MP int 1 run scoreboard players get $DiffMP Temporary
    # function api:mp/set
# リセット
    data remove storage api: Argument.UUID
    data remove storage api: Argument.Amount
    data remove storage api: Argument.Operation
    # scoreboard players reset $DiffMP Temporary
    # scoreboard players reset $NewMaxMP Temporary
    # scoreboard players reset $PrevMaxMP Temporary