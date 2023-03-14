#> asset:artifact/0615.censored/trigger/3.6.attack
#
# 通常攻撃
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute positioned ~ ~1.5 ~ rotated 0 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 45 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 90 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 135 90 run function asset:artifact/0615.censored/trigger/particle.1
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 333.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    execute as @p[tag=this] run function lib:damage/modifier
# 対象に
    function lib:damage/
# リセット
    function lib:damage/reset