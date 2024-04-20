#> asset_manager:artifact/create/set_lore
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    function asset_manager:artifact/create/lore_append
# スキル設定
    data modify storage asset:artifact CopiedTriggers set from storage asset:artifact Triggers
    execute if data storage asset:artifact CopiedTriggers[0] run function asset_manager:artifact/create/trigger/
    data remove storage asset:artifact CopiedTriggers
# 使える神
    function asset_manager:artifact/create/set_god
