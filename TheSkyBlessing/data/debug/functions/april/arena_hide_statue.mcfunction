#> debug:april/arena_hide_statue

# 石像をマップ下に移動
    execute positioned -3964 101 198 run clone -3964 101 198 -3959 103 201 -3964 1 138 masked
    execute positioned -3969 104 197 run clone -3969 104 197 -3954 119 201 -3969 4 137 masked
    execute positioned -3964 101 198 run fill -3964 101 198 -3959 103 201 air replace
    execute positioned -3969 104 197 run fill -3969 104 197 -3954 119 201 air replace
