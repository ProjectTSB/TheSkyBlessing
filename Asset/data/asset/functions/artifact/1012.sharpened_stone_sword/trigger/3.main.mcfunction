#> asset:artifact/1012.sharpened_stone_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1012.sharpened_stone_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 45.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function lib:damage/
    function lib:damage/reset