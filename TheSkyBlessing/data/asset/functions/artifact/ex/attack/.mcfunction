#> asset:artifact/ex/attack/
#
# 神器のトリガー
#
# @within function asset:artifact/alias/65500/attack/

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..60] run particle dust -1 0 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..60] run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 0.3 1.4

# 各エンティティにダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..60] run function asset:artifact/ex/attack/kill

# リセット
    function api:damage/reset
