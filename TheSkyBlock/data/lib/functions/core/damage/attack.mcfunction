#> lib:core/damage/attack
#
# ダメージ与えるよ
#
# @within function lib:damage

#> 変数定義
# @internal
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $Health
    #declare score_holder $defensePoints
    #declare score_holder $toughness
    #declare score_holder $Resistance

# 引数データをコピー
    execute store result score $Damage Temporary run data get storage lib: Damage
    execute unless data storage lib: EPF run data modify storage lib: EPF set value -1
    execute unless data storage lib: DisableParticle run data modify storage lib: DisableParticle set value 0b
    execute unless data storage lib: BypassArmor run data modify storage lib: BypassArmor set value 0b
    execute unless data storage lib: BypassResistance run data modify storage lib: BypassResistance set value 0b
# 計算に必要な値を取得
    function lib:core/damage/get_status
# 与えるダメージの計算
    function lib:core/damage/calc
# Mobに適用
    function lib:core/damage/health_subtract
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $EPF Temporary