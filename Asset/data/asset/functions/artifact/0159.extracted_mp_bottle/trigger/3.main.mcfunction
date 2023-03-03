#> asset:artifact/0159.extracted_mp_bottle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0159.extracted_mp_bottle/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $6 Const
    scoreboard players set $Fluctuation Lib 30
    scoreboard players operation $Fluctuation Lib -= $Random Temporary
    tellraw @s ["[ ",{"score": {"name": "$Random","objective": "Temporary"},"color": "light_purple"},{"text": " ] MPが天使の取り分となり、[ ","color": "white"},{"score": {"name": "$Fluctuation","objective": "Lib"},"color": "green"},{"text": " ] MPが回復した！","color": "white"}]
    function lib:mp/fluctuation
    scoreboard players reset $Random
    execute anchored eyes run particle dust 1 0.31 0.91 0.3 ^ ^ ^ 0.4 0.4 0.4 0 20 normal @s