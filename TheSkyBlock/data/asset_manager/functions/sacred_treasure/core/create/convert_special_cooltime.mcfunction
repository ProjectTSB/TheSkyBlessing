#> asset_manager:sacred_treasure/core/create/convert_special_cooltime
#
# スペシャルクールタイムを秒数にする 1tickとかだと表示が変になる
#
# @within function asset_manager:sacred_treasure/core/create/set_lore

# 5? スペシャル☆クールタイムを秒数に変換
    execute store result score $Cooldown Temporary run data get storage asset:sacred_treasure LocalCooldown
    scoreboard players operation $Cooldown Temporary /= $20 Const
# 5? スペシャル☆クールタイムの小数第一位まで求める
    execute store result score $CooldownDecimal Temporary run data get storage asset:sacred_treasure LocalCooldown
    scoreboard players operation $CooldownDecimal Temporary %= $20 Const
    scoreboard players operation $CooldownDecimal Temporary *= $5 Const
# 5?ストレージに入れる
    execute store result storage asset:sacred_treasure SpecialCooldown int 1 run scoreboard players get $Cooldown Temporary
    execute store result storage asset:sacred_treasure SpecialCooldownDecimal int 1 run scoreboard players get $CooldownDecimal Temporary