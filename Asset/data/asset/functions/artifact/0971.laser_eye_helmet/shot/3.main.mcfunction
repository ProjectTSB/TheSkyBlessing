#> asset:artifact/0971.laser_eye_helmet/shot/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0971.laser_eye_helmet/shot/2.check_condition

#> Private
# @private
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# 前方拡散設定
    execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3.0
    data modify storage lib: Argument.Spread set value 0.5
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/0971.laser_eye_helmet/shot/bullet
    tag @s remove Landing

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
