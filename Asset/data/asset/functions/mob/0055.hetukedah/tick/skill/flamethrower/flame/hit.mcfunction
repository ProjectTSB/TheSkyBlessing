#> asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/hit
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 7f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # データ取得
        function api:data_get/hurt_time
    # ダメージ
        function lib:damage/modifier
        execute if data storage api: {HurtTime:0s} run function lib:damage/
# リセット
    function lib:damage/reset