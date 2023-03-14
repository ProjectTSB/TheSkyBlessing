#> asset:artifact/0106.stone_cutter_blade/trigger/3.1.entity.main
#
# 攻撃先のエンティティに対する処理
#
# @within function asset:artifact/0106.stone_cutter_blade/trigger/3.main

# 演出など
    particle block redstone_block ~ ~1 ~ 0.1 0 0.1 4.2 80
    playsound minecraft:item.totem.use player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.2 0.1

# ダメージ処理
    # 引数の設定
    # 与えるダメージ: 8
        data modify storage lib: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正
    execute as @p[tag=this,distance=..15] run function lib:damage/modifier
# 実行
    function lib:damage/
# 開放
    function lib:damage/reset