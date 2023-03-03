#> asset:artifact/0796.log4shell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0796.log4shell/trigger/2.check_condition

#> prv
# @private
    #declare tag M4.SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 原木を消費
    clear @s #minecraft:logs 1

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 2

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["M4.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 5.0
    data modify storage lib: Argument.Spread set value 0.1

# 前方拡散を実行する
    execute as @e[type=marker,tag=M4.SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発射
    execute facing entity @e[type=marker,tag=M4.SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:artifact/0796.log4shell/trigger/3.1.shell
    tag @s remove M4.Landing

# 向きを変える
    tp @s ~ ~ ~ ~ ~-1

# リセット
    kill @e[type=marker,tag=M4.SpreadMarker]
