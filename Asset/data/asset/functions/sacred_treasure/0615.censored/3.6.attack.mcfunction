#> asset:sacred_treasure/0615.censored/3.6.attack
#
# 通常攻撃
#
# @within function asset:sacred_treasure/0615.censored/3.main

# 演出
    execute positioned ~ ~1.5 ~ rotated 0 0 run function lib:particle/circle/dragon_breath/0.5
    execute positioned ~ ~1.5 ~ rotated 45 0 run function lib:particle/circle/dragon_breath/0.5
    execute positioned ~ ~1.5 ~ rotated 90 0 run function lib:particle/circle/dragon_breath/0.5
    execute positioned ~ ~1.5 ~ rotated 135 0 run function lib:particle/circle/dragon_breath/0.5
    playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    execute as @a[tag=this] run function lib:damage/modifier
# 対象に
    function lib:damage/
# リセット
    data remove storage lib: Argument
