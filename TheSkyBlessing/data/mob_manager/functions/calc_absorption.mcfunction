#> mob_manager:calc_absorption
#
# 緩衝体力が減っていた場合の処理
#
# @within function core:tick/

#> val
# @private
    #declare score_holder $Absorption

# 緩衝体力を取得
# 緩衝体力が1024より減っている場合、その差分をスコアを引く
    execute store result score $Absorption MobHealth run data get entity @s AbsorptionAmount 10
    scoreboard players remove $Absorption MobHealth 10240
    scoreboard players operation @s MobHealth += $Absorption MobHealth

# キル処理
    execute if score @s MobHealth matches ..0 run kill @s

# ダメージを表示形式に変換する
    scoreboard players operation $Fluctuation Lib = $Absorption MobHealth
    scoreboard players operation $Fluctuation Lib *= $10 Const
# 攻撃した敵の座標で表示する
    execute at @s run function lib:status_log/show_health

# 回復
    data modify entity @s AbsorptionAmount set value 1024f

# リセット
    scoreboard players reset $Absorption MobHealth