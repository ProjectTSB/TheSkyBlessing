#> lib:damage/core/attack
#
# ダメージ与えるよ
#
# @within function lib:damage/

# 引数データをコピー
    execute store result score $Damage Temporary run data get storage lib: Argument.Damage 100
    execute unless data storage lib: Argument.ElementType run data modify storage lib: ElementType set value "None"
    execute unless data storage lib: Argument.DisableParticle run data modify storage lib: DisableParticle set value 0b
    execute unless data storage lib: Argument.BypassArmor run data modify storage lib: BypassArmor set value 0b
    execute unless data storage lib: Argument.BypassResist run data modify storage lib: BypassResist set value 0b
# 計算に必要な値を取得
    function lib:damage/core/get_status
# 与えるダメージの計算
    function lib:damage/core/calc
# Mobに適用
    function lib:damage/core/health_subtract
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $EPF Temporary