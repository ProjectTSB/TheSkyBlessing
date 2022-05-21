#> asset:sacred_treasure/0535.all_night_chestplate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0535.all_night_chestplate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く


# 演出
    playsound minecraft:entity.drowned.death_water player @a ~ ~ ~ 1 0.8
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.03 30

# ダメージ設定
    # 与えるダメージ = 90
        data modify storage lib: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 引数の設定
    # 回復する量 = 2
        data modify storage lib: Argument.Heal set value 2f
# 補正function
    function lib:heal/modifier
# 自分を対象に
    function lib:heal/
# リセット
    function lib:damage/reset