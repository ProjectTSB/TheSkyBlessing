#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick

# パーティクル
    function asset:mob/0022.red_knight/tick/particle_1

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset