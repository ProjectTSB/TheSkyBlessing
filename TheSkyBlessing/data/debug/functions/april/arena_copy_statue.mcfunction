#> debug:april/arena_copy_statue

# 石像を元の位置に移動
    execute positioned -3964 1 138 run clone -3964 1 138 -3959 3 141 -3964 101 198 masked
    execute positioned -3969 4 137 run clone -3969 4 137 -3954 19 141 -3969 104 197 masked
    execute positioned -3964 1 138 run fill -3964 1 138 -3959 3 141 air replace
    execute positioned -3969 4 137 run fill -3969 4 137 -3954 19 141 air replace
