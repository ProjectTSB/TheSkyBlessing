#> asset:mob/0079.thundercloud/tick/5.thunder_damage
#
#
#
# @within function asset:mob/0079.thundercloud/tick/4.fall_thunder

# 演出
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 2.0 0

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 6.25f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.2] run function lib:damage/
# リセット
    data remove storage lib: Argument

