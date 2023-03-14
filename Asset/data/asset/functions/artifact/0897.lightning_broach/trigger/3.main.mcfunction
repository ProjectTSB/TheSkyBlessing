#> asset:artifact/0897.lightning_broach/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0897.lightning_broach/trigger/2.check_condition

#> health
# @private
    #declare score_holder $Health
    #declare score_holder $Count
    #declare score_holder $CountMul
    #declare score_holder $Base

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle dust 100000000 100000000 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound entity.lightning_bolt.impact player @a

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:897}}}]

# ダメージ係数の設定
    scoreboard players set $Base Temporary 60
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,distance=..10,limit=1] run scoreboard players set $Base Temporary 15
    scoreboard players set $CountMul Temporary 40
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,distance=..10,limit=1] run scoreboard players set $CountMul Temporary 5

# ダメージ/計算
    execute store result score $Health Temporary run data get entity @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] AbsorptionAmount 100
    scoreboard players operation $Count Temporary *= $CountMul Temporary
    scoreboard players operation $Count Temporary += $Base Temporary
    scoreboard players operation $Health Temporary *= $Count Temporary
    execute store result storage lib: Argument.Damage float 0.00001 run scoreboard players get $Health Temporary
# ダメージ/その他の設定
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.FixedDamage set value 1b
# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run function lib:damage/

# リセット
    scoreboard players reset $Base Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $CountMul Temporary
    scoreboard players reset $Health Temporary
    function lib:damage/reset