#> asset:artifact/0643.raimei_chestplate/trigger/3.2.fullset_attack
#
# フルセット時で攻撃を与えた時
#
# @within function asset:artifact/0643.raimei_chestplate/trigger/1.1.attacktrigger


# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1

    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.867 0.667 0.161 1 ~ ~1 ~ 0 1 0 0 100

# ダメージ設定
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset
