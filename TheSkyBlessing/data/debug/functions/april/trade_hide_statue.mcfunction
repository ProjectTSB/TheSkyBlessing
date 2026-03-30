#> debug:april/trade_hide_statue

# 石像を上空に移動
    execute positioned -31 22 -2 run clone -31 22 -2 -27 24 0 -31 122 -2 masked
    execute positioned -36 25 -3 run clone -36 25 -3 -22 40 2 -36 125 -3 masked
    execute positioned -31 22 -2 run fill -31 22 -2 -27 24 0 air replace
    execute positioned -36 25 -3 run fill -36 25 -3 -22 40 2 air replace
