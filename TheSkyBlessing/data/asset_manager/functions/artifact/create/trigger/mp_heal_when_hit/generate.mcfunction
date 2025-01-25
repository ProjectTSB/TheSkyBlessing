#> asset_manager:artifact/create/trigger/mp_heal_when_hit/generate
#
#
#
# @within function asset_manager:artifact/create/trigger/mp_heal_when_hit/

# 文字列として取得
    $data modify storage asset:artifact Temp set value "$(Val)"

# 生成
    loot replace block 10000 0 10000 container.5 loot asset_manager:artifact/generate_lore/mp_heal_when_hit
