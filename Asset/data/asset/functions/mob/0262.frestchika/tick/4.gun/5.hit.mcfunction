#> asset:mob/0262.frestchika/tick/4.gun/5.hit
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.gun/4.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 14f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @p[gamemode=!creative,gamemode=!spectator,tag=LandingTarget,distance=..20,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
