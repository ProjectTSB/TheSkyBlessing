#> debug:april/world/tp_to_field

# 付近にプレイヤーがいない場合、実行しない
    execute positioned -3968.5 100.5 193.5 unless entity @a[distance=..16] run return 0

# パーティクル
    execute positioned -3968.5 100.5 193.5 run function debug:april/world/particle

# フィールドに移動
    execute positioned -3968.5 100.5 193.5 as @a[distance=..1] run tp @s -3968.0 100.0 146.5
