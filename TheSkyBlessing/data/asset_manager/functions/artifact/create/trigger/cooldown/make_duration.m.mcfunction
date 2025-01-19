#> asset_manager:artifact/create/trigger/cooldown/make_duration.m
#
#
#
# @input args
#   CooldownPath: DataPath
#   IconPath: DataPath
# @within function asset_manager:artifact/create/trigger/cooldown/

#> Temp
# @private
    #declare score_holder $Cooldown
    #declare score_holder $CooldownDecimal
    #declare score_holder $CooldownMinutes

# クールダウンを秒数に変換
    $execute store result score $Cooldown Temporary run data get $(CooldownPath)
    scoreboard players operation $Cooldown Temporary /= $20 Const
# クールダウンの小数第一位まで求める
    $execute store result score $CooldownDecimal Temporary run data get $(CooldownPath)
    scoreboard players operation $CooldownDecimal Temporary %= $20 Const
    scoreboard players operation $CooldownDecimal Temporary *= $5 Const
# 秒数を分に変換
    scoreboard players operation $CooldownMinutes Temporary = $Cooldown Temporary
    scoreboard players operation $CooldownMinutes Temporary /= $60 Const
    # 用がなくなったらmod演算
        scoreboard players operation $Cooldown Temporary %= $60 Const
    # 分がいるかをloot_table側で判断するためのフラグ
        execute if score $CooldownMinutes Temporary matches 1.. run scoreboard players set @s Temporary 1
# ストレージに入れる
    $data modify storage asset:artifact CooldownIcon set from $(IconPath)
    execute store result storage asset:artifact CooldownSecond int 1 run scoreboard players get $Cooldown Temporary
    execute store result storage asset:artifact CooldownDecimal int 1 run scoreboard players get $CooldownDecimal Temporary
    execute store result storage asset:artifact CooldownMinutes int 1 run scoreboard players get $CooldownMinutes Temporary
# Lore にする
    loot replace block 10000 1 10000 container.0 loot asset_manager:artifact/generate_lore/cooldown_duration
    data modify storage asset:artifact Cooldown append from block 10000 1 10000 Items[0].tag.display.Lore[0]
# リセット
    scoreboard players reset $Cooldown
    scoreboard players reset $CooldownDecimal
    scoreboard players reset $CooldownMinutes
    scoreboard players reset @s Temporary
    data remove storage asset:artifact CooldownIcon
    data remove storage asset:artifact CooldownSecond
    data remove storage asset:artifact CooldownDecimal
    data remove storage asset:artifact CooldownMinutes
