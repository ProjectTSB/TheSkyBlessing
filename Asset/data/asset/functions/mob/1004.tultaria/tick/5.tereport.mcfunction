#> asset:mob/1004.tultaria/tick/5.tereport
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick


# テレポート演出
    execute at @s run function asset:mob/1004.tultaria/tick/move/vfx

# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,12d],[0d,3d],[8d,12d]]

# 拡散
    function asset:mob/1004.tultaria/tick/move/spread
    execute at @s facing entity @p[distance=..100] eyes positioned ~ ~0.5 ~ run function asset:mob/1004.tultaria/tick/move/tereport

# テレポート演出
    execute at @s run function asset:mob/1004.tultaria/tick/move/vfx