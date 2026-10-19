#> asset:trader/15/select_artifact/current_progress/set_pool.m
# @input args:
#   Rarity : int
# @within function asset:trader/15/select_artifact/current_progress/

# プールを設定
    $function api:artifact/get_registry/normal/$(Rarity)
    $data modify storage asset:temp Pool set from storage api: Return.Registry.Normal.Lv$(Rarity)

# 確率でプールを日替わり枠に置換
    $execute unless predicate lib:random_pass_per/$(Per) run return fail

# 該当Lvの要素が1個でもあれば置換
    $function api:artifact/get_registry/extra/daily/$(Rarity)
    $execute if data storage api: Return.Registry.Daily.Lv$(Rarity)[0] run data modify storage asset:temp Pool set from storage api: Return.Registry.Daily.Lv$(Rarity)
