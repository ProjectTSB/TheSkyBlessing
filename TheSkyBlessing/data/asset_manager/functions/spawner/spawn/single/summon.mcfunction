#> asset_manager:spawner/spawn/single/summon
#
#
#
# @within function asset_manager:spawner/spawn/single/

# 召喚する Mob をランダムに選択する
    function asset_manager:spawner/spawn/choose_mob_id/
# 追加の引数設定
    data modify storage api: Argument.PreInitInterceptFn set value "asset_manager:spawner/spawn/single/set_summoned_spawner_id"

# スポナーに重なっているのであれば 1 マス上で召喚を試みる
    execute if entity @s[distance=..0.51] positioned ~ ~1 ~ if block ~ ~ ~ #lib:no_collision/ if block ~ ~0.9 ~ #lib:no_collision/ if block ~ ~1.8 ~ #lib:no_collision/ run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute if entity @s[distance=..0.51] positioned ~ ~1 ~ if block ~ ~ ~ #lib:no_collision/ if block ~ ~0.9 ~ #lib:no_collision/ if block ~ ~1.8 ~ #lib:no_collision/ run function api:mob/summon
# そうじゃないならふつーに召喚を試みる
    execute unless entity @s[distance=..0.51] if block ~ ~ ~ #lib:no_collision/ if block ~ ~0.9 ~ #lib:no_collision/ if block ~ ~1.8 ~ #lib:no_collision/ run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute unless entity @s[distance=..0.51] if block ~ ~ ~ #lib:no_collision/ if block ~ ~0.9 ~ #lib:no_collision/ if block ~ ~1.8 ~ #lib:no_collision/ run function api:mob/summon

# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.PreInitInterceptFn
