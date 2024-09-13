#> player_manager:absorption/construct_message
#
#
#
# @within function player_manager:absorption/

    data modify storage player_manager:absorption AbsorptionMessage append value '{"text":"\\uC091","font":"space"}'

# 最大体力を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 1

# 最大体力のハート数を算出
    scoreboard players operation $MaxHealthHeartCount Temporary = $MaxHealth Temporary
    scoreboard players operation $MaxHealthHeartCount Temporary /= $2 Const
    scoreboard players operation $MaxHealthOdd Temporary = $MaxHealth Temporary
    scoreboard players operation $MaxHealthOdd Temporary %= $2 Const
    scoreboard players operation $MaxHealthHeartCount Temporary += $MaxHealthOdd Temporary

# 緩衝体力のハート数を算出
    scoreboard players operation $AbsorptionHeartCount Temporary = @s PlayerAbsorption
    scoreboard players operation $AbsorptionHeartCount Temporary /= $2 Const
    scoreboard players operation $AbsorptionOdd Temporary = @s PlayerAbsorption
    scoreboard players operation $AbsorptionOdd Temporary %= $2 Const
    scoreboard players operation $AbsorptionHeartCount Temporary += $AbsorptionOdd Temporary
    # execute if score $MaxHealthOdd Temporary matches 1 store result storage player_manager:absorption VanillaEffect.Level int 0.249999 run scoreboard players get @s PlayerAbsorption
    # execute if score $MaxHealthOdd Temporary matches 0 store result storage player_manager:absorption VanillaEffect.Level int 0.2 run scoreboard players get @s PlayerAbsorption
    # function player_manager:absorption/effect.m with storage player_manager:absorption VanillaEffect

# LeftOffset
    scoreboard players operation $LeftOffset Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $LeftOffset Temporary %= $10 Const
    scoreboard players operation $LeftOffset Temporary *= $8 Const
    execute if score $LeftOffset Temporary matches 000..009 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value "00"
    execute if score $LeftOffset Temporary matches 010..099 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value "0"
    execute if score $LeftOffset Temporary matches 100..999 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value ""
    execute store result storage player_manager:absorption LeftOffset.Size int 1 run scoreboard players get $LeftOffset Temporary
    function player_manager:absorption/append_left_offset.m with storage player_manager:absorption LeftOffset

# 緩衝体力のハートを切り出す (※切り取り位置はデリミタ分store時に2倍する)
    data modify storage player_manager:absorption SourceHeartText set value "\
        \\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010<\
        \\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020<\
        \\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030<\
        \\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040.\\\\u0040<\
        \\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050.\\\\u0050<\
        \\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060.\\\\u0060<\
        \\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070.\\\\u0070<\
        \\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080.\\\\u0080<\
        \\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090.\\\\u0090<\
        \\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100.\\\\u0100<\
        \\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110.\\\\u0110<\
        \\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120.\\\\u0120<\
        \\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130.\\\\u0130<\
        \\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140.\\\\u0140<\
        \\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150.\\\\u0150<\
        \\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160.\\\\u0160<\
        \\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170.\\\\u0170<\
        \\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180.\\\\u0180<\
        \\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190.\\\\u0190<\
        \\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200.\\\\u0200<\
    "
    scoreboard players operation $TrimHeartStart Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $TrimHeartStart Temporary *= $8 Const
    execute store result storage player_manager:absorption TrimHeart.Start int 1 run scoreboard players get $TrimHeartStart Temporary

    scoreboard players operation $TrimHeartEnd Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $TrimHeartEnd Temporary += $AbsorptionHeartCount Temporary
    scoreboard players operation $TrimHeartEnd Temporary *= $8 Const
    scoreboard players remove $TrimHeartEnd Temporary 2
    execute store result storage player_manager:absorption TrimHeart.End int 1 run scoreboard players get $TrimHeartEnd Temporary

    function player_manager:absorption/trim_heart.m with storage player_manager:absorption TrimHeart
    execute store result storage player_manager:absorption Heart.Half int 1 run scoreboard players get $AbsorptionOdd Temporary
    function player_manager:absorption/append_heart.m with storage player_manager:absorption Heart

# tellraw @s [{"score":{"name": "$Offset","objective": "Temporary"}},{"storage":"player_manager:absorption","nbt":"HeartMessage","interpret": false,"font": "absorption"}]


# RightOffset
    scoreboard players operation $RightOffset Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $RightOffset Temporary += $AbsorptionHeartCount Temporary
    scoreboard players operation $RightOffset Temporary %= $10 Const
    scoreboard players operation $RightOffset Temporary *= $8 Const
    execute if score $RightOffset Temporary matches 000..009 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value "00"
    execute if score $RightOffset Temporary matches 010..099 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value "0"
    execute if score $RightOffset Temporary matches 100..999 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value ""
    execute store result storage player_manager:absorption RightOffset.Size int 1 run scoreboard players get $RightOffset Temporary
    function player_manager:absorption/append_right_offset.m with storage player_manager:absorption RightOffset
    execute if score $RightOffset Temporary matches 0 run data modify storage player_manager:absorption AbsorptionMessage append value '{"text":"\\uC080","font":"space"}'




    data modify storage player_manager:absorption AbsorptionMessage append value '{"text":"\\u0090","font":"space"}'







# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $MaxHealthHeartCount Temporary
    scoreboard players reset $MaxHealthOdd Temporary
    scoreboard players reset $AbsorptionHeartCount Temporary
    scoreboard players reset $AbsorptionOdd Temporary
    scoreboard players reset $Offset Temporary
    scoreboard players reset $Negative Temporary
    scoreboard players reset $TrimHeartStart Temporary
    scoreboard players reset $TrimHeartEnd Temporary
