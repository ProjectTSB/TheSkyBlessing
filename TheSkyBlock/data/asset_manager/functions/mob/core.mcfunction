#> asset_manager:mob/core
#
#
#
# @within function core:tick

# thisタグ
    tag @s add this
# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    data modify storage asset:context Health set from entity @s Health
# Victim / Attackerのタグ設定
    execute if entity @s[tag=AttackingEntity] as @a[scores={AttackingEntity=0..}] if score @s AttackingEntity = @e[tag=this,limit=1] AttackingEntity run tag @s add Victim
    execute if entity @s[tag=AttackedEntity] as @a[scores={AttackedEntity=0..}] if score @s AttackedEntity = @e[tag=this,limit=1] AttackedEntity run tag @s add Attacker
# トリガーの呼び出し
    function #asset:mob/tick
    execute if entity @s[tag=AttackingEntity] run function #asset:mob/attack
    execute if entity @s[tag=AttackedEntity] run function #asset:mob/hurt
# リセット
    tag @a[tag=Victim] remove Victim
    tag @a[tag=Attacker] remove Attacker
    tag @s remove this