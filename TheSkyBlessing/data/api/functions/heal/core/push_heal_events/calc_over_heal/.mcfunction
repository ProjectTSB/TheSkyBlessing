#> api:heal/core/push_heal_events/calc_over_heal/
#
# 超過回復量を計算
#
# @within function api:heal/core/push_heal_events/

# 体力割合が99.9%以上なら、体力を100%として扱ってreturn
# ダメだったらレビューで弾いてくれ～
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 1000
    execute if score $HealthPer Temporary matches 999.. store result score $OverHeal Temporary run return run data get storage api: Argument.Fluctuation 100

# 必要な値を取得
    execute store result score $OverHeal Temporary run data get storage api: Argument.Fluctuation 100
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 100

# 計算
# OverHeal = (CurrentHealth + Heal) - MaxHealth
    scoreboard players operation $OverHeal Temporary += $CurrentHealth Temporary
    scoreboard players operation $OverHeal Temporary -= $MaxHealth Temporary

# 0未満なら0にする
    scoreboard players operation $OverHeal Temporary > $0 Const
