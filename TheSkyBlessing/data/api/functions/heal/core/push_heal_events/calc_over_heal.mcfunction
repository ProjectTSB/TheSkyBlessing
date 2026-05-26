#> api:heal/core/push_heal_events/calc_over_heal
#
# 超過回復量を計算
#
# @within function api:heal/core/push_heal_events/

# 必要な値を取得
    execute store result score $OverHeal Temporary run data get storage api: Argument.Fluctuation 100
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 100
    execute store result score $CurrentHealth Temporary run data get storage api: Health 100

# 計算
# OverHeal = (CurrentHealth + Heal) - MaxHealth
    scoreboard players operation $OverHeal Temporary += $CurrentHealth Temporary
    scoreboard players operation $OverHeal Temporary -= $MaxHealth Temporary

# 0未満なら0にする
    scoreboard players operation $OverHeal Temporary > $0 Const

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $HealthPer Temporary
