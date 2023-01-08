#> asset:mob/1004.tultaria/tick/1.melee_attack/finisher/damage
#
# ちょっと普通の斬撃より痛い
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/finisher/slash

# 演出
    playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.5

# ダメージ判定
# 与えるダメージ
    data modify storage lib: Argument.Damage set value 30f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset