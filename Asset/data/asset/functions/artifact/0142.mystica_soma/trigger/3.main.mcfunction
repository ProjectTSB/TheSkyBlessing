#> asset:artifact/0142.mystica_soma/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0142.mystica_soma/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    execute store result storage asset:temp 3Y.Temp double 0.55 run function lib:mp/get_max
    execute store result score $Fluctuation Lib run data get storage asset:temp 3Y.Temp
    function lib:mp/fluctuation

# HP回復
    execute store result storage lib: Argument.Heal double 0.0040 run attribute @s generic.max_health get 100
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset
    data remove storage asset:temp 3Y.Temp