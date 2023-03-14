#> asset:artifact/0368.fire_spell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0368.fire_spell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 敵が居ない場合
    execute positioned ^ ^ ^5 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:artifact/0368.fire_spell/trigger/4.attack

# 前方に敵が居た場合
    execute positioned ^ ^ ^5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] run function asset:artifact/0368.fire_spell/trigger/4.attack