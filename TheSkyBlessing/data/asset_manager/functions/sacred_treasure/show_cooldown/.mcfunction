#> asset_manager:sacred_treasure/show_cooldown/
#
#
#
# @within function asset_manager:sacred_treasure/tick/player

# 割合に変換
    scoreboard players operation $CoolDown Temporary = @s WeaponLogCD
    scoreboard players operation $CoolDown Temporary *= $100 Const
    scoreboard players operation $CoolDown Temporary /= @s WeaponLogCDMax
# 二分探索
    execute if score $CoolDown Temporary matches 0..49 run function asset_manager:sacred_treasure/show_cooldown/0-49
    execute if score $CoolDown Temporary matches 50..99 run function asset_manager:sacred_treasure/show_cooldown/50-99