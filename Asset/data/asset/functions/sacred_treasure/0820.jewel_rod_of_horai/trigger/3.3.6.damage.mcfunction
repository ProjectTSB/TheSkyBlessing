#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.6.damage
#
# 装備数に応じたダメージを与える
# @input
#   tag MS.AttackTarget #攻撃対象エンティティにつく
#
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack

#>prv
# @private
    #declare score_holder $MS.OwnerID
    #declare tag MS.Owner

# 攻撃実行者のID取得
    scoreboard players operation $MS.OwnerID Temporary = @s MS.OwnerID
    execute as @a if score @s UserID = $MS.OwnerID Temporary run tag @s add MS.Owner

# 1発目ダメージデータ
    execute if score @s MS.AttackLevel matches 1.. run data modify storage lib: Argument.Damage set value 220f
    execute if score @s MS.AttackLevel matches 1.. run data modify storage lib: Argument.AttackType set value "Magic"
    execute if score @s MS.AttackLevel matches 1.. run data modify storage lib: Argument.ElementType set value "Fire"
    execute if score @s MS.AttackLevel matches 1.. as @p[tag=MS.Owner] run function lib:damage/modifier
    execute if score @s MS.AttackLevel matches 1.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function lib:damage/

# 2発目ダメージデータ
    execute if score @s MS.AttackLevel matches 2.. run data modify storage lib: Argument.Damage set value 220f
    execute if score @s MS.AttackLevel matches 2.. run data modify storage lib: Argument.AttackType set value "Magic"
    execute if score @s MS.AttackLevel matches 2.. run data modify storage lib: Argument.ElementType set value "Thunder"
    execute if score @s MS.AttackLevel matches 2.. as @p[tag=MS.Owner] run function lib:damage/modifier
    execute if score @s MS.AttackLevel matches 2.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function lib:damage/

# 3発目ダメージデータ
    execute if score @s MS.AttackLevel matches 3.. run data modify storage lib: Argument.Damage set value 220f
    execute if score @s MS.AttackLevel matches 3.. run data modify storage lib: Argument.AttackType set value "Magic"
    execute if score @s MS.AttackLevel matches 3.. run data modify storage lib: Argument.ElementType set value "Water"
    execute if score @s MS.AttackLevel matches 3.. as @p[tag=MS.Owner] run function lib:damage/modifier
    execute if score @s MS.AttackLevel matches 3.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function lib:damage/

# 4,5発目ダメージデータ
    execute if score @s MS.AttackLevel matches 4.. run data modify storage lib: Argument.Damage set value 220f
    execute if score @s MS.AttackLevel matches 4.. run data modify storage lib: Argument.AttackType set value "Magic"
    execute if score @s MS.AttackLevel matches 4.. run data modify storage lib: Argument.ElementType set value "None"
    execute if score @s MS.AttackLevel matches 4.. as @p[tag=MS.Owner] run function lib:damage/modifier
    execute if score @s MS.AttackLevel matches 4.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function lib:damage/
    execute if score @s MS.AttackLevel matches 4.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function lib:damage/

# reset
    tag @a[tag=MS.Owner] remove MS.Owner
    scoreboard players reset $MS.OwnerID Temporary