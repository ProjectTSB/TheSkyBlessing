#> lib:damage/core/attack
#
# ダメージ与えるよ
#
# @within function lib:damage/

# 計算に必要な値を取得
    function lib:damage/core/get_status/
# 与えるダメージの計算
    function lib:damage/core/calc/
# Mobに適用
    function lib:damage/core/health_subtract/
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary