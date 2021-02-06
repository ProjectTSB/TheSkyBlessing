#> asset:sacred_treasure/0349.passion_pickaxe/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0349.passion_pickaxe/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# ダメージ
    # 与えるダメージ = 30
        data modify storage lib: Argument.Damage set value 30f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 炎属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # パーティクルを無効化するか否か
        data modify storage lib: Argument.DisableParticle set value false
    # 防御力/防具強度を無視するか否か
        data modify storage lib: Argument.BypassArmor set value false
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value false
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=HurtEntity,distance=..10,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

