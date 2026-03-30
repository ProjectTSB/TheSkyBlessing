#> debug:april/arena_copy_sheep

# 交易島の石像を消去
    execute positioned -31 22 -2 run fill -31 22 -2 -27 24 0 air replace
    execute positioned -36 25 -3 run fill -36 25 -3 -22 40 2 air replace

# 羊像を交易島に移動
    execute positioned -3970 90 202 run clone -3970 90 202 -3966 98 210 -31 22 -5 masked

# 移動しておいた石像を消去
    execute positioned -3964 1 138 run fill -3964 1 138 -3959 3 141 air replace
    execute positioned -3969 4 137 run fill -3969 4 137 -3954 19 141 air replace
