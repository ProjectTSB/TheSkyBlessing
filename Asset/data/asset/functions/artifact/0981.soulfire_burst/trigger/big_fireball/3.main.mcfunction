#> asset:artifact/0981.soulfire_burst/trigger/big_fireball/3.main
#
# Tick実行部分。多く出したくないパーティクルとかが放り込まれる
#
# @within function asset:artifact/0981.soulfire_burst/trigger/big_fireball/2.tick

# 移動
    function asset:artifact/0981.soulfire_burst/trigger/big_fireball/4.move

# パーティクル
    particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 3
    particle minecraft:dust 0.373 0.584 0.631 1.5 ~ ~ ~ 0.2 0.2 0.2 0 3
    particle minecraft:entity_effect ~ ~ ~ 0 0.5 1.5 1 0