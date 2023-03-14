#> asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/damage
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword

#> private
# @private
    #declare tag RD.This

# 自身にタグ
    tag @s add RD.This

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 200f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # 補正function
        execute as @a if score @s UserID = @e[type=armor_stand,tag=RD.This,distance=..50,limit=1] RD.SwordUserID run function lib:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,distance=..4] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @s remove RD.This