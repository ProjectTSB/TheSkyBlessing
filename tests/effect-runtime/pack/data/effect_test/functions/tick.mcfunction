#> effect_test:tick
#
# 主対象だけを as / at にして Effect manager を一回実行する。
# 通常 core tick 経路の検証は scenario.json の cow を用いる別ケースで行う。
# @private

# イベントの実行者と位置を主対象に揃える
    execute as @e[tag=EffectTest.Main,limit=1] at @s run function asset_manager:effect/tick
