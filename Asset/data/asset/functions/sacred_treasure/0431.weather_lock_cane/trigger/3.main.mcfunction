#> asset:sacred_treasure/0431.weather_lock_cane/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0431.weather_lock_cane/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 処理
    gamerule doWeatherCycle false
    schedule function asset:sacred_treasure/0431.weather_lock_cane/trigger/lock 6000t replace

# 演出
    # chat
        tellraw @a [{"text": "天鍵杖","color": "aqua"},{"text": "の効果で天候が固定された！","color": "white"}]
    # Sound
        # //重ねて疑似音量UP
        playsound ui.button.click master @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click master @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click master @a ~ ~ ~ 1000000 1 1
    # Particle
        execute at @a run particle dripping_water ~ ~ ~ 5 5 5 0 100 force @p