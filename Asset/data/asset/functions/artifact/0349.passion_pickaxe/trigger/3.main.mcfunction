#> asset:artifact/0349.passion_pickaxe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0349.passion_pickaxe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ダメージ
    # 与えるダメージ = 550
        data modify storage lib: Argument.Damage set value 550f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 炎属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value false
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# 自身にエフェクト付与
    effect give @s minecraft:haste 60 3 true

# 演出
    particle minecraft:lava ~ ~ ~ 0.5 1 0.5 1 100 force @a[distance=..20]
    playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 1 0.7