#> entity_manager:damage.particle
#
# 与えたダメージだけParticleを表示します
#
# @within function entity_manager:damage

scoreboard players operation $Damage Temporary /= $20000 Const
scoreboard players operation $Damage Temporary *= $2^20 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2048
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1024
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 512
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 256
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 128
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 64
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 32
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 16
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 8
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 4
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2
scoreboard players operation $Damage Temporary *= $2 Const
execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1