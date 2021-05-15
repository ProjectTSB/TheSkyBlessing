#> asset:sacred_treasure/0374.thunder_spell/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0374.thunder_spell/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ^ ^ ^0.5 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^1 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^1.5 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^2 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^2.5 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^3 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^3.5 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^4 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^4.5 0.1 0 0.1 0 5
    particle dust 1 1 0 1 ^ ^ ^5 0.1 0 0.1 0 5


    execute positioned ^ ^ ^5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] facing entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] feet run function asset:sacred_treasure/0374.thunder_spell/3.1.line