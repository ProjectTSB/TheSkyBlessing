#> asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    execute rotated ~ 20 anchored eyes positioned ^0 ^ ^-5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon
    execute rotated ~ 20 anchored eyes positioned ^4.33013 ^ ^-2.5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon
    execute rotated ~ 20 anchored eyes positioned ^4.33013 ^ ^2.5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon
    execute rotated ~ 20 anchored eyes positioned ^0 ^ ^5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon
    execute rotated ~ 20 anchored eyes positioned ^-4.33013 ^ ^2.5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon
    execute rotated ~ 20 anchored eyes positioned ^-4.33013 ^ ^-2.5 run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/gun_summon