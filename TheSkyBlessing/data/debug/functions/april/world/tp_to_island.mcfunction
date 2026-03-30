#> debug:april/world/tp_to_island

# 付近にプレイヤーがいない場合、もしくは戦闘中は実行しない
    execute positioned -3968.0 100.5 149.5 unless entity @a[distance=..16] run return 0
    execute positioned -3961 101 200 if entity @e[type=slime,tag=CO.EntityRoot,distance=..80] run return 0

# パーティクル
    execute positioned -3968.0 100.5 149.5 run function debug:april/world/particle

# フィールドに移動
    execute positioned -3968.0 100.5 149.5 as @a[distance=..1] run tp @s -3968.5 100.0 195.5
    