#> asset:mob/0262.frestchika/tick/999.overheat/1.overheat
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/999.overheat/2.fitst_tick

# 演出
    particle smoke ~ ~1 ~ 0.3 0.3 0.3 0 2
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/999.overheat/vfx
    execute if score @s 7A.Tick matches 20 run function asset:mob/0262.frestchika/tick/999.overheat/vfx
    execute if score @s 7A.Tick matches 40 run function asset:mob/0262.frestchika/tick/999.overheat/vfx
    execute if score @s 7A.Tick matches 60 run function asset:mob/0262.frestchika/tick/999.overheat/vfx
    execute if score @s 7A.Tick matches 80 run function asset:mob/0262.frestchika/tick/999.overheat/vfx
    execute if score @s 7A.Tick matches 100 run function asset:mob/0262.frestchika/tick/999.overheat/vfx


# リセット7
    execute if score @s 7A.Tick matches 140 run tag @s remove 7A.SkillOverHeat
    execute if score @s 7A.Tick matches 140 positioned ~ ~0.5 ~ run function asset:mob/0262.frestchika/tick/move/teleport
    execute if score @s 7A.Tick matches 140 at @s run function asset:mob/0262.frestchika/tick/reset