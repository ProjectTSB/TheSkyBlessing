#> asset_manager:mob/triggers/
#
# トリガー処理
#
# @within function asset_manager:mob/tick/

# thisタグ
    tag @s add this
# EntityStorage呼び出し
    function oh_my_dat:please
# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField
# Victim / Attackerのタグ設定
    execute if entity @s[tag=AttackingEntity] as @a[scores={AttackingEntity=0..}] if score @s AttackingEntity = @e[tag=this,limit=1] AttackingEntity run tag @s add Victim
    execute if entity @s[tag=AttackedEntity] as @a[scores={AttackedEntity=0..}] if score @s AttackedEntity = @e[tag=this,limit=1] AttackedEntity run tag @s add Attacker
# トリガーの呼び出し
    function asset_manager:mob/triggers/tick/
    execute if entity @s[tag=AttackingEntity] run function asset_manager:mob/triggers/attack/
    execute if entity @s[tag=AttackedEntity] run function asset_manager:mob/triggers/hurt/
# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
    function oh_my_dat:please
# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this
# リセット
    data remove storage asset:context id
    data remove storage asset:context this
    tag @a[tag=Victim] remove Victim
    tag @a[tag=Attacker] remove Attacker
    tag @s remove this
# 死んでいたらスコアを完全に削除する
    execute unless score @s MobUUID matches -2147483648..2147483647 run scoreboard players reset @s
