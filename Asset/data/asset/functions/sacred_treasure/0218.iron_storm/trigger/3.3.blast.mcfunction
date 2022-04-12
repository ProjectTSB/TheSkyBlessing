#> asset:sacred_treasure/0218.iron_storm/trigger/3.3.blast
#
# ダメージ、音、パーティクルを出したあと処理対象タグを剥がす
#
# @within function asset:sacred_treasure/0218.iron_storm/trigger/3.2.check_entity

#> private
#
# @private
    #declare score_holder $BlastDamage
    #declare score_holder $70
    #declare score_holder $DamageCoefficient

# ダメージ計算(アイアンゴーレムのHPの30%~100%),計算結果=ダメージ*100
    execute store result score $DamageCoefficient Temporary run function lib:random/
    scoreboard players operation $DamageCoefficient Temporary %= $70 Const
    scoreboard players add $DamageCoefficient Temporary 30
    execute store result score $BlastDamage Temporary run data get entity @s AbsorptionAmount
    scoreboard players operation $BlastDamage Temporary *= $DamageCoefficient Temporary

# ダメージ
    execute store result storage lib: Argument.Damage float 0.01 run scoreboard players get $BlastDamage Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    execute as @e[type=#lib:living,distance=..5] run function lib:damage/
    data remove storage lib: Argument

# 音
    playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 1 1 1

# パーティクル
    particle explosion ~ ~1 ~ 1.5 1 1.5 0 15 force

# 空中判定タグ削除
    tag @s remove DA.InAir