#> lib:core/damage/attack
#
# ダメージ与えるよ
#
# @within function lib:damage

#> 変数定義
# @internal
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $SaveDamage
    #declare score_holder $SaveEPF
    #declare score_holder $Health
    #declare score_holder $defensePoints
    #declare score_holder $toughness
    #declare score_holder $Resistance

# 引数データをコピー
    scoreboard players operation $SaveDamage Temporary = $Damage Temporary
    scoreboard players operation $SaveEPF Temporary = $EPF Temporary
# 計算に必要な値を取得
    function lib:core/damage/get_status
# 与えるダメージの計算
    function lib:core/damage/calc
# Mobに適用
    function lib:core/damage/health_subtract
# 引数を戻す
    scoreboard players operation $Damage Temporary = $SaveDamage Temporary
    scoreboard players operation $EPF Temporary = $SaveEPF Temporary
# リセット
    scoreboard players reset $SaveDamage Temporary
    scoreboard players reset $SaveEPF Temporary