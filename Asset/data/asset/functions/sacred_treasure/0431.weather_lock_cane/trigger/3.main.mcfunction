#> asset:sacred_treasure/0431.weather_lock_cane/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0431.weather_lock_cane/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 天候によりstorageを設定する
    execute if predicate lib:weather/is_sunny run data modify storage asset:temp BZ.Weather set value "Sunny"
    execute if predicate lib:weather/is_raining run data modify storage asset:temp BZ.Weather set value "Rain"
    execute if predicate lib:weather/is_thundering run data modify storage asset:temp BZ.Weather set value "Thunder"

# 演出
    # chat
        tellraw @a [{"text": "天鍵杖","color": "aqua"},{"text": "の効果で天候が固定された！","color": "white"}]
    # Sound
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1

    # Particle
        execute rotated ~ 0 positioned ^ ^ ^10 positioned ~ ~10 ~ positioned ^ ^ ^-10 run function asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/key
        execute if data storage asset:temp BZ{Weather:Sunny} as @a at @s run function asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/sunny
        execute if data storage asset:temp BZ{Weather:Rain} as @a at @s run function asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/rain
        execute if data storage asset:temp BZ{Weather:Thunder} as @a at @s run function asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/thunder
# 補正の追加
    execute as @a run function asset:sacred_treasure/0431.weather_lock_cane/trigger/4.weather_effect

# 天候を固定するためのループを発動
    function asset:sacred_treasure/0431.weather_lock_cane/trigger/weather_lock

# 処理
    gamerule doWeatherCycle false
    schedule function asset:sacred_treasure/0431.weather_lock_cane/trigger/end 3600t replace

