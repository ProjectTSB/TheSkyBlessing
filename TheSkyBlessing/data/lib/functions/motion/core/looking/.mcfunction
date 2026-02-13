#> lib:motion/core/looking/
#
#
#
# @within function lib:motion/looking

# 値を取得
    execute store result score $VectorMagnitude Temporary run data get storage lib: Argument.VectorMagnitude 10000

# KB耐性を計算
    execute if data storage lib: Argument{KnockbackResist:1b} store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
    execute if data storage lib: Argument{KnockbackResist:1b} run function lib:motion/core/looking/knockback_resistance

# 適用
    execute if entity @s[type=player] run function lib:motion/core/looking/player
    execute if entity @s[type=!player,tag=!Uninterferable] run function lib:motion/core/looking/non-player

# リセット
    scoreboard players reset $VectorMagnitude Temporary
    scoreboard players reset $KnockbackResist Temporary
