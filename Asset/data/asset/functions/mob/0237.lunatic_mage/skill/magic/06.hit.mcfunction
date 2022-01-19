#> asset:mob/0237.lunatic_mage/skill/magic/06.hit
#
# ヒット処理だよ
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive

# ダメージ設定
    data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,tag=!LandingTarget,distance=..2] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 多段ヒットしないようにTagをつけておくといいかも
    tag @a[gamemode=!spectator,distance=..2] add LandingTarget