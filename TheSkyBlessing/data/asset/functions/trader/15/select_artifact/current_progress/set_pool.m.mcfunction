#> asset:trader/15/select_artifact/current_progress/set_pool.m
# @input args:
#   Rarity : int
# @within function asset:trader/15/select_artifact/current_progress/

# プールを設定
    $data modify storage asset:temp Pool set from storage api: Return.Registry.Normal[$(Rarity)]

# 指定されたランクの隠し枠神器があれば、確率で隠し枠の神器のプールに置き換え
    $execute if data storage api: Return.Registry.Hide[$(Rarity)][0] if predicate lib:random_pass_per/3 run data modify storage asset:temp Pool set from storage api: Return.Registry.Hide[$(Rarity)]
