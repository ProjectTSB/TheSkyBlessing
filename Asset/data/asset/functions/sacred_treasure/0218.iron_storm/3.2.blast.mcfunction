#> asset:sacred_treasure/0218.iron_storm/3.2.blast
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0218.iron_storm/3.1.check_on_ground

#> private
#
# @private
    #declare score_holder $BlastDamage
    #declare score_holder $Random
    #declare score_holder $70
    #declare score_holder $DamageCoefficient

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね

# ダメージ計算(アイアンゴーレムのHPの30%~100%),計算結果=ダメージ*100
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $70 Const
    scoreboard players set $DamageCoefficient Temporary 100
    scoreboard players operation $DamageCoefficient Temporary -= $Random Temporary
    execute store result score $BlastDamage Temporary run data get entity @s Health
    scoreboard players operation $BlastDamage Temporary *= $DamageCoefficient Temporary

# ダメージ
    execute store result storage lib: Argument.Damage float 0.01 run scoreboard players get $BlastDamage Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,distance=..5] run function lib:damage/
    data remove storage lib: Argument

# 音
    playsound entity.generic.explode player @a ~ ~ ~ 1 1 1

# パーティクル
    particle explosion ~ ~1 ~ 1.5 1 1.5 0 15 force

# 空中判定タグ削除
    tag @s remove DA.InAir