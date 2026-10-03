#> effect_test:tick
#
# 主対象の Effect を一回処理する
# @private

# イベントの実行者と位置を主対象に揃える
    execute as @e[tag=EffectTest.Main,limit=1] at @s run function asset_manager:effect/tick
