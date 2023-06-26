#> core:migration/v0.1.1/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.1.1"

#> from: 01c9fb5daefc8423f0576191e88f2faff5d386f3
# @private
    scoreboard objectives add RD.Time dummy
    scoreboard objectives add RD.WaitingTime dummy
    scoreboard objectives add RD.Turn dummy
    scoreboard objectives add RD.SwordTime dummy
    scoreboard objectives add RD.SwordUserID dummy