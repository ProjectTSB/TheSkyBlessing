#> asset:mob/0262.frestchika/tick/5.tereport
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.tick


# テレポート演出
    execute at @s run function asset:mob/0262.frestchika/tick/move/vfx

# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,3d],[8d,8d]]

# 拡散
    function asset:mob/0262.frestchika/tick/move/spread
    execute at @s facing entity @p eyes positioned ~ ~0.5 ~ run function asset:mob/0262.frestchika/tick/move/tereport

# テレポート演出
    execute at @s run function asset:mob/0262.frestchika/tick/move/vfx