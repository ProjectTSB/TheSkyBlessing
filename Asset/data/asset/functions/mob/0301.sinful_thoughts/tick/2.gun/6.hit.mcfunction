#> asset:mob/0301.sinful_thoughts/tick/2.gun/6.hit
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.gun/5.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @p[gamemode=!creative,gamemode=!spectator,tag=LandingTarget,distance=..20,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

    execute as @p[tag=LandingTarget,distance=..20,limit=1] run say hitd
# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
