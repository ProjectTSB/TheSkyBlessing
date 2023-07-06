#> asset:artifact/0959.whirlwind_scabbard/trigger/vfx
#
# 攻撃時の演出
#
# @within function asset:artifact/0959.whirlwind_scabbard/trigger/3.main

# 演出
    particle cloud ~ ~1.2 ~ 0.4 0.4 0.4 0.3 15 normal @a
    particle sneeze ~ ~1.2 ~ 0.4 0.4 0.4 0.3 15 normal @a
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 2 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.6 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.4 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.2 0
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 1 0