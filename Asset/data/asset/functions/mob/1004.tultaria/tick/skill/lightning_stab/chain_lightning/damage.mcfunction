#> asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/damage
#
# チェインライトニング部分のダメージ
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ補正
        function lib:damage/modifier
    # ダメージ与える
        function lib:damage/
# リセット
    function lib:damage/reset
