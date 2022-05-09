#> asset:sacred_treasure/0365.bloodthirsty_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0365.bloodthirsty_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 神器もらうよ
    data modify storage api: Argument.ID set value 364
    function api:sacred_treasure/give/from_id

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 100
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.ravager.celebrate player @a ~ ~ ~ 1 2
    tellraw @s {"text":"赤い騎士の剣は満足そうだ","color":"dark_red","bold":true}

# 自身の現在体力の30%分のダメージを与える
    # ダメージ量
        function api:data_get/health
        execute store result storage lib: Argument.Damage float 0.3 run data get storage api: Health
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    data remove storage lib: Argument