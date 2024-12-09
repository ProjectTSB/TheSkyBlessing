#> api:damage/core/attack
#
# ダメージ与えるよ
#
# @within function
#   api:damage/
#   api:damage/core/attack_to_forward_target/

# 計算に必要な値を取得
    function api:damage/core/get_status/
# 与えるダメージの計算
    function api:damage/core/calc/
# Mobに適用
    function api:damage/core/health_subtract/
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary
