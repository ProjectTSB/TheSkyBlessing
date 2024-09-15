#> player_manager:absorption/construct_message
#
#
#
# @within function player_manager:absorption/

# 開始位置調節
    data modify storage player_manager:absorption AbsorptionMessage append value '{"text":"\\uC091","font":"space"}'

# 最大体力を少数切り上げで取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get -10000
    scoreboard players operation $MaxHealth Temporary /= $10000 Const
    scoreboard players operation $MaxHealth Temporary *= $-1 Const

# 最大体力のハート数 (半分も1つとカウントする)
    scoreboard players operation $MaxHealthHeartCount Temporary = $MaxHealth Temporary
    scoreboard players operation $MaxHealthHeartCount Temporary /= $2 Const
    scoreboard players operation $MaxHealthOdd Temporary = $MaxHealth Temporary
    scoreboard players operation $MaxHealthOdd Temporary %= $2 Const
    scoreboard players operation $MaxHealthHeartCount Temporary += $MaxHealthOdd Temporary

# 緩衝体力のハート数 (半分も1つとカウントする)
    scoreboard players operation $AbsorptionHeartCount Temporary = @s PlayerAbsorption
    scoreboard players operation $AbsorptionHeartCount Temporary /= $2 Const
    scoreboard players operation $AbsorptionOdd Temporary = @s PlayerAbsorption
    scoreboard players operation $AbsorptionOdd Temporary %= $2 Const
    scoreboard players operation $AbsorptionHeartCount Temporary += $AbsorptionOdd Temporary

# 最大体力と緩衝体力を合計したハート数
    scoreboard players operation $AllHeartCount Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $AllHeartCount Temporary += $AbsorptionHeartCount Temporary

# 最大体力の一番上の行のハート数
    scoreboard players operation $MaxHealthTopRowHeartCount Temporary = $MaxHealthHeartCount Temporary
    scoreboard players operation $MaxHealthTopRowHeartCount Temporary %= $10 Const

# 沈む表示を再現するためバニラ緩衝体力を付与
    # レベルを算出
        scoreboard players operation $VanillaAbsorptionLevel Temporary = $AbsorptionHeartCount Temporary
        scoreboard players operation $VanillaAbsorptionLevel Temporary += $MaxHealthTopRowHeartCount Temporary
        scoreboard players remove $VanillaAbsorptionLevel Temporary 1
        scoreboard players operation $VanillaAbsorptionLevel Temporary /= $10 Const
        execute if score $MaxHealthTopRowHeartCount Temporary matches 0 run scoreboard players add $VanillaAbsorptionLevel Temporary 1
        # バニラ緩衝体力が見えてしまうので1行遅らせる
            scoreboard players remove $VanillaAbsorptionLevel Temporary 1
        scoreboard players operation $VanillaAbsorptionLevel Temporary *= $5 Const
        scoreboard players remove $VanillaAbsorptionLevel Temporary 1
    # 付与
        effect clear @s absorption
        execute if score $VanillaAbsorptionLevel Temporary matches 1.. store result storage player_manager:absorption VanillaAbsorption.Level int 1 run scoreboard players get $VanillaAbsorptionLevel Temporary
        execute if score $VanillaAbsorptionLevel Temporary matches 1.. run function player_manager:absorption/effect.m with storage player_manager:absorption VanillaAbsorption

# ハートの沈み具合を算出
    scoreboard players operation $SinkLevel Temporary = $AllHeartCount Temporary
    # バニラ緩衝体力が見えてしまうので+1行分の30を引く
        scoreboard players operation $SinkLevel Temporary -= $30 Const
    scoreboard players operation $SinkLevel Temporary *= $-1 Const
    scoreboard players operation $SinkLevel Temporary /= $10 Const
    scoreboard players operation $SinkLevel Temporary *= $-1 Const

# LeftOffset
    # pixel数を算出
        scoreboard players operation $LeftOffset Temporary = $MaxHealthTopRowHeartCount Temporary
        scoreboard players operation $LeftOffset Temporary *= $8 Const
    # ゼロパディング
        execute if score $LeftOffset Temporary matches 000..009 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value "00"
        execute if score $LeftOffset Temporary matches 010..099 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value "0"
        execute if score $LeftOffset Temporary matches 100..999 run data modify storage player_manager:absorption LeftOffset.ZeroPadding set value ""
    # 文字に変換して追加
        execute store result storage player_manager:absorption LeftOffset.Size int 1 run scoreboard players get $LeftOffset Temporary
        function player_manager:absorption/append_left_offset.m with storage player_manager:absorption LeftOffset

# 緩衝体力のハートを切り出す
    execute if score $SinkLevel Temporary matches ..0 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010.\\\\u0010<\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020.\\\\u0020<\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030.\\\\u0030<"
    execute if score $SinkLevel Temporary matches 1 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010.\\\\u1010<\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020.\\\\u1020<\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030.\\\\u1030<\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040.\\\\u1040<"
    execute if score $SinkLevel Temporary matches 2 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010.\\\\u2010<\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020.\\\\u2020<\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030.\\\\u2030<\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040.\\\\u2040<\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050.\\\\u2050<"
    execute if score $SinkLevel Temporary matches 3 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010.\\\\u3010<\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020.\\\\u3020<\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030.\\\\u3030<\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040.\\\\u3040<\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050.\\\\u3050<\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060.\\\\u3060<"
    execute if score $SinkLevel Temporary matches 4 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010.\\\\u4010<\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020.\\\\u4020<\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030.\\\\u4030<\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040.\\\\u4040<\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050.\\\\u4050<\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060.\\\\u4060<\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070.\\\\u4070<"
    execute if score $SinkLevel Temporary matches 5 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010.\\\\u5010<\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020.\\\\u5020<\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030.\\\\u5030<\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040.\\\\u5040<\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050.\\\\u5050<\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060.\\\\u5060<\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070.\\\\u5070<\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080.\\\\u5080<"
    execute if score $SinkLevel Temporary matches 6 run data modify storage player_manager:absorption SourceHeartText set value "\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010.\\\\u6010<\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020.\\\\u6020<\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030.\\\\u6030<\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040.\\\\u6040<\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050.\\\\u6050<\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060.\\\\u6060<\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070.\\\\u6070<\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080.\\\\u6080<\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090.\\\\u6090<"
    execute if score $SinkLevel Temporary matches 7.. run data modify storage player_manager:absorption SourceHeartText set value "\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010.\\\\u7010<\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020.\\\\u7020<\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030.\\\\u7030<\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040.\\\\u7040<\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050.\\\\u7050<\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060.\\\\u7060<\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070.\\\\u7070<\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080.\\\\u7080<\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090.\\\\u7090<\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100.\\\\u7100<\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110.\\\\u7110<\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120.\\\\u7120<\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130.\\\\u7130<\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140.\\\\u7140<\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150.\\\\u7150<\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160.\\\\u7160<\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170.\\\\u7170<\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180.\\\\u7180<\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190.\\\\u7190<\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200.\\\\u7200<\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210.\\\\u7210<\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220.\\\\u7220<\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230.\\\\u7230<\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240.\\\\u7240<\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250.\\\\u7250<\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260.\\\\u7260<\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270.\\\\u7270<\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280.\\\\u7280<\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290.\\\\u7290<\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300.\\\\u7300<\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310.\\\\u7310<\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320.\\\\u7320<\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330.\\\\u7330<\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340.\\\\u7340<\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350.\\\\u7350<\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360.\\\\u7360<\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370.\\\\u7370<\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380.\\\\u7380<\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390.\\\\u7390<\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400.\\\\u7400<"
    # 切り取り開始位置を算出
        scoreboard players operation $TrimHeartStart Temporary = $MaxHealthHeartCount Temporary
        scoreboard players operation $TrimHeartStart Temporary *= $8 Const
        execute store result storage player_manager:absorption TrimHeart.Start int 1 run scoreboard players get $TrimHeartStart Temporary
    # 切り取り終了位置を算出
        scoreboard players operation $TrimHeartEnd Temporary = $AllHeartCount Temporary
        scoreboard players operation $TrimHeartEnd Temporary *= $8 Const
        scoreboard players remove $TrimHeartEnd Temporary 2
        execute store result storage player_manager:absorption TrimHeart.End int 1 run scoreboard players get $TrimHeartEnd Temporary
    # 切り取る
        function player_manager:absorption/trim_heart.m with storage player_manager:absorption TrimHeart
    # 半分のハートと繋げる
        execute store result storage player_manager:absorption Heart.Half int 1 run scoreboard players get $AbsorptionOdd Temporary
        function player_manager:absorption/append_heart.m with storage player_manager:absorption Heart

# RightOffset
    # pixel数を算出
        scoreboard players operation $RightOffset Temporary = $AllHeartCount Temporary
        scoreboard players operation $RightOffset Temporary %= $10 Const
        scoreboard players operation $RightOffset Temporary *= $8 Const
        execute if score $RightOffset Temporary matches 0 run scoreboard players set $RightOffset Temporary 80
    # ゼロパディング
        execute if score $RightOffset Temporary matches 000..009 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value "00"
        execute if score $RightOffset Temporary matches 010..099 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value "0"
        execute if score $RightOffset Temporary matches 100..999 run data modify storage player_manager:absorption RightOffset.ZeroPadding set value ""
    # 文字に変換して追加
        execute store result storage player_manager:absorption RightOffset.Size int 1 run scoreboard players get $RightOffset Temporary
        function player_manager:absorption/append_right_offset.m with storage player_manager:absorption RightOffset

# 終了位置調節
    data modify storage player_manager:absorption AbsorptionMessage append value '{"text":"\\u0090","font":"space"}'

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $MaxHealthHeartCount Temporary
    scoreboard players reset $MaxHealthOdd Temporary
    scoreboard players reset $AbsorptionHeartCount Temporary
    scoreboard players reset $AbsorptionOdd Temporary
    scoreboard players reset $AllHeartCount Temporary
    scoreboard players reset $MaxHealthTopRowHeartCount Temporary
    scoreboard players reset $VanillaAbsorptionLevel Temporary
    scoreboard players reset $SinkLevel Temporary
    scoreboard players reset $TrimHeartStart Temporary
    scoreboard players reset $TrimHeartEnd Temporary
    scoreboard players reset $LeftOffset Temporary
    scoreboard players reset $RightOffset Temporary
    data remove storage player_manager:absorption SourceHeartText
    data remove storage player_manager:absorption LeftOffset
    data remove storage player_manager:absorption TrimHeart
    data remove storage player_manager:absorption Heart
    data remove storage player_manager:absorption RightOffset
