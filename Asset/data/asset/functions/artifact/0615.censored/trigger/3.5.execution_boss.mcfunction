#> asset:artifact/0615.censored/trigger/3.5.execution_boss
#
# ボス級の処刑
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute positioned ~ ~-0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~ ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.4 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.6 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.8 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    function asset:artifact/0615.censored/trigger/3.2.censored_object2
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 666.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    execute as @p[tag=this] run function lib:damage/modifier
# 対象に
    function lib:damage/
# リセット
    function lib:damage/reset