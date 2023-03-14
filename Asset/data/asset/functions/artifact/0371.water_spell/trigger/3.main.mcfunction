#> asset:artifact/0371.water_spell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0371.water_spell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 敵が居ない場合
    execute positioned ^ ^ ^5 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:artifact/0371.water_spell/trigger/3.1.attack

# 前方に敵が居た場合
    execute positioned ^ ^ ^5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] at @s run function asset:artifact/0371.water_spell/trigger/3.1.attack