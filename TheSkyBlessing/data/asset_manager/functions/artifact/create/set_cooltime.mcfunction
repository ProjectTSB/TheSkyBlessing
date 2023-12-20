#> asset_manager:artifact/create/set_cooltime
#
# 普通のクールタイムを秒数に変換 クールタイムが1tickだったりすると正確な秒数が出ない
#
# @within function asset_manager:artifact/create/set_lore

#> Temp
# @private
    #declare score_holder $Cooldown
    #declare score_holder $CooldownDecimal
    #declare score_holder $CooldownMinutes

# 5? クールタイムを秒数に変換
    execute store result score $Cooldown Temporary run data get storage asset:artifact LocalCooldown
    scoreboard players operation $Cooldown Temporary /= $20 Const
# 5? クールタイムの小数第一位まで求める
    execute store result score $CooldownDecimal Temporary run data get storage asset:artifact LocalCooldown
    scoreboard players operation $CooldownDecimal Temporary %= $20 Const
    scoreboard players operation $CooldownDecimal Temporary *= $5 Const
# 5? 秒数を分に変換
    scoreboard players operation $CooldownMinutes Temporary = $Cooldown Temporary
    scoreboard players operation $CooldownMinutes Temporary /= $60 Const
    # 用がなくなったらmod演算
        scoreboard players operation $Cooldown Temporary %= $60 Const
    # 分がいるかをloot_table側で判断するためのフラグ
        execute if score $CooldownMinutes Temporary matches 1.. run scoreboard players set @s Temporary 1
# 5?ストレージに入れる
    execute store result storage asset:artifact LocalCooldownSecond int 1 run scoreboard players get $Cooldown Temporary
    execute store result storage asset:artifact LocalCooldownDecimal int 1 run scoreboard players get $CooldownDecimal Temporary
    execute store result storage asset:artifact LocalCooldownMinutes int 1 run scoreboard players get $CooldownMinutes Temporary

# lootする
    loot replace block 10000 0 10000 container.6 loot asset_manager:artifact/generate_lore/cooldown

# リセット
    scoreboard players reset $Cooldown
    scoreboard players reset $CooldownDecimal
    scoreboard players reset $CooldownMinutes
    scoreboard players reset @s Temporary
    data remove storage asset:artifact LocalCooldownSecond
    data remove storage asset:artifact LocalCooldownDecimal
    data remove storage asset:artifact LocalCooldownMinutes