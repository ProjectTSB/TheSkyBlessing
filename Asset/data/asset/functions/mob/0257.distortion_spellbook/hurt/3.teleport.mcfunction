#> asset:mob/0257.distortion_spellbook/hurt/3.teleport
#
#
#
# @within function asset:mob/0257.distortion_spellbook/hurt/2.hurt

# ランダムテレポート
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,2d],[5d,5d]]
    function lib:spread_entity/
    data remove storage lib: Argument
# 演出
    playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1