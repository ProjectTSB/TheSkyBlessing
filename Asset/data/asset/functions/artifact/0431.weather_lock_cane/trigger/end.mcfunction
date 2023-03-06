#> asset:artifact/0431.weather_lock_cane/trigger/end
#
# lockを解除します
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/3.main

# 戻す
    gamerule doWeatherCycle true

# 演出
    # chat
        tellraw @a [{"text": "天鍵杖","color": "aqua"},{"text": "の効果が切れた！","color": "white"}]
    # Sound
        # //重ねて疑似音量UP
        playsound block.glass.break player @a ~ ~ ~ 1000000 1 1
    # Particle
        execute at @a run particle dripping_water ~ ~ ~ 5 5 5 0 100 force @p

# タグを消す
    execute as @a run function asset:artifact/0431.weather_lock_cane/trigger/weather_effect_clear

# ストレージを消す
    data remove storage asset:temp BZ