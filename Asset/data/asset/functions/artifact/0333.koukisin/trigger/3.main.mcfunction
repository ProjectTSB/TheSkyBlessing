#> asset:artifact/0333.koukisin/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0333.koukisin/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run particle minecraft:crit ~ ~1 ~ 0.2 0.8 0.2 0 80 normal @a[distance=..30]
    playsound minecraft:block.anvil.place player @a[distance=..10] ~ ~ ~ 0.8 2

# ダメージ
    # 与えるダメージ = 28
        data modify storage lib: Argument.Damage set value 28f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value true
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset