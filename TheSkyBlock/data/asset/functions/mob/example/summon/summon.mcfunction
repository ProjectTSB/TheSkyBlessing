#> asset:mob/example/summon/summon
#
#
#
# @within function asset:mob/example/summon/trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","Enemy"]}
# ID
    data modify storage asset:mob ID set value -2147483647
# 名前
    data modify storage asset:mob Name set value '{"text":"サンプルの敵"}'
# 体力
    data modify storage asset:mob Health set value 100.0
# 攻撃力
    data modify storage asset:mob AttackDamage set value 2.0
# 防御力
    data modify storage asset:mob Defense set value 0.0
# 特殊防御力
    data modify storage asset:mob SpecialDefense set value 0.0
# 移動速度
    data modify storage asset:mob Speed set value 0.23
# 索敵範囲
    data modify storage asset:mob FollowRange set value 32.0
# ノックバック耐性
    data modify storage asset:mob KnockBackResist set value 1.0
# 属性耐性 // 1pointにつき2%カット、20point以上は頭打ち
    # 物理耐性
        data modify storage asset:mob Resist.Physical set value 10
    # 魔法耐性
        data modify storage asset:mob Resist.Magic set value 2
    # 火耐性
        data modify storage asset:mob Resist.Fire set value 20
    # 水耐性
        data modify storage asset:mob Resist.Water set value 5
    # 雷耐性
        data modify storage asset:mob Resist.Thunder set value 15
# CustomNBT
    data modify storage asset:mob CustomNBT set value {}

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon