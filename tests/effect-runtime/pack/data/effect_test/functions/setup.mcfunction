#> effect_test:setup
#
# 各機能シナリオの独立した付与先と観測用 storage を用意する
# 隔離 fixture 専用
# armor stand は通常 core tick の対象外で、手動の tick 入口で処理する
# @private

# 前のシナリオの付与先を破棄し、主対象と別の付与先を新しく作る
    kill @e[tag=EffectTest.Main]
    kill @e[tag=EffectTest.Other]
    summon minecraft:armor_stand 0 0 0 {Tags:["EffectTest.Main","AlreadyInitMob"],Marker:1b,Invulnerable:1b,NoGravity:1b}
    summon minecraft:armor_stand 1 0 0 {Tags:["EffectTest.Other","AlreadyInitMob"],Marker:1b,Invulnerable:1b,NoGravity:1b}

# イベント記録・観測値と API の作業状態を初期化する
    data modify storage effect_test: Log set value []
    data remove storage effect_test: Observed
    data remove storage effect_test: AfterGive
    function api:entity/mob/effect/reset
