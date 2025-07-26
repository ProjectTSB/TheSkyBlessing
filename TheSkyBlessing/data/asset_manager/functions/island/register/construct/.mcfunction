#> asset_manager:island/register/construct/
# @within function world_manager:nexus_loader/try_load_asset/construct.m

# 呪われた神器の本体を召喚する
# ロードの関係で召喚後に向きを変えると反映されない可能性があるため、直接マクロでRotationを指定して召喚する
    data modify storage asset:island Args.Rotation set from storage asset:island Rotation
    function asset_manager:island/register/construct/summon.m with storage asset:island Args
    data remove storage asset:island Args

# 空気にしておく
    setblock ~ ~ ~ air

# データの適用
    execute as @e[type=item_display,tag=CursedArtifactInit,distance=..0.01,limit=1] run function asset_manager:island/register/construct/set_data
