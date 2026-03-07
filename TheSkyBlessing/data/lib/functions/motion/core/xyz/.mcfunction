#> lib:motion/core/xyz/
#
#
#
# @within function lib:motion/xyz

# KB耐性を乗算
    execute if data storage lib: Argument{KnockbackResist:1b} store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
    execute if data storage lib: Argument{KnockbackResist:1b} run function lib:motion/core/xyz/knockback_resistance

# 適用
    execute if entity @s[type=player] run function lib:motion/core/xyz/player
    execute if entity @s[type=!player,tag=!Uninterferable] run data modify entity @s Motion set from storage lib: Argument.Vector

# リセット
    scoreboard players reset $KnockbackResist Temporary
