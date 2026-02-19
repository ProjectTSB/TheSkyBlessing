#> asset_manager:artifact/triggers/attack/store_crit_and_charge_percentage
#
#
#
# @within function asset_manager:artifact/triggers/attack/foreach

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $Attack

# 取得 $Damage(e4) $Attack(e1)
    execute store result score $Damage Temporary run data get storage asset:context Attack.Amount 10000
    execute store result score $Attack Temporary run attribute @s generic.attack_damage get 10
# 通常殴りで出る最大ダメージに対する割合を計算する $Damage(e4) / $Attack(e1) = $Damage(e3)
    scoreboard players operation $Damage Temporary /= $Attack Temporary
# ついでに ChargeMultiplier として保存しておく
    execute store result storage asset:context Attack.ChargeMultiplier double 0.001 run scoreboard players get $Damage Temporary
# 非クリティカルの場合の処理 $Damage(e3) / 10(e1) = $Damage(e2)
    execute if score $Damage Temporary matches ..1000 run data modify storage asset:context Attack.Crit set value false
    execute if score $Damage Temporary matches ..1000 run scoreboard players operation $Damage Temporary /= $10 Const
# クリティカルの場合の処理 $Damage(e3) / 15(e1) = $Damage(e2)
    execute if score $Damage Temporary matches 1001.. run data modify storage asset:context Attack.Crit set value true
    execute if score $Damage Temporary matches 1001.. run scoreboard players operation $Damage Temporary /= $15 Const
# チャージ率を代入
    execute store result storage asset:context Attack.Charge double 0.01 run scoreboard players get $Damage Temporary

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Attack Temporary
