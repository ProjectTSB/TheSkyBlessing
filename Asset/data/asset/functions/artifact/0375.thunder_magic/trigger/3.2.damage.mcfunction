#> asset:artifact/0375.thunder_magic/trigger/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0375.thunder_magic/trigger/3.main
#   asset:artifact/0375.thunder_magic/trigger/3.1.line
# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 100
    particle minecraft:explosion ~ ~ ~ 0.7 0.1 0.7 0 10
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ = 80
        data modify storage lib: Argument.Damage set value 80f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1.5,sort=nearest] run function lib:damage/
# リセット
    function lib:damage/reset