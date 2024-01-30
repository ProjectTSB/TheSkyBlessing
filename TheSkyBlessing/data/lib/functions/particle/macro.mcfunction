#> lib:particle/macro
#
#
#
# @within function lib:particle/tick

# 0~9
    $execute if score @s ParticleFrame matches 0..9 run data modify entity @s text set value '{"text":"\\uE00$(Tick)","font":"particle/$(Font)","color":"#$(Color)"}'

# 10~99
    $execute if score @s ParticleFrame matches 10..99 run data modify entity @s text set value '{"text":"\\uE0$(Tick)","font":"particle/$(Font)","color":"#$(Color)"}'