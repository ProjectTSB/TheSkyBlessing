#> debug:world_asset/force_fetch.m
# @input args
#   Type: string
#   ID: string
# @private
# @user

#> Private
# @private
#declare storage debug:world_asset

# Args を作る
    $data modify storage debug:world_asset Args.ID set value $(ID)
    $data modify storage debug:world_asset Args.Type set value "$(Type)"
# register 呼び出し
    $function asset_manager:$(Type)/register/register.m with storage debug:world_asset Args
# 生成条件満たしてなかったらリセットして fail
    $execute unless data storage asset:$(Type) ID run tellraw @a [{"text":"そんな ID の $(Type) は無いよ (ID: $(ID))","color":"red"}]
    $execute unless data storage asset:$(Type) ID run function asset_manager:$(Type)/register/reset
    $execute unless data storage asset:$(Type) ID run return fail

# 構築
    $data modify storage debug:world_asset Args.X set from storage asset:$(Type) Pos[0]
    $data modify storage debug:world_asset Args.Y set from storage asset:$(Type) Pos[1]
    $data modify storage debug:world_asset Args.Z set from storage asset:$(Type) Pos[2]
    function debug:world_asset/construct.m with storage debug:world_asset Args

# リセット
    $function asset_manager:$(Type)/register/reset
    data remove storage debug:world_asset Args
