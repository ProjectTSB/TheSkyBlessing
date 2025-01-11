#> core:migration/v0.1.5/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.1.5"

#> 一応scheduleを消す
# @private
    #declare function core:tick/4_interval
schedule clear core:tick/4_interval

#> from: fea94a6d6ba812974756ef4cdf4ed231b2e26959
# @private
scoreboard objectives add PerHealth dummy {"text":"♥","color":"#FF4c99"}
scoreboard objectives modify PerHealth rendertype hearts
scoreboard objectives setdisplay list PerHealth
