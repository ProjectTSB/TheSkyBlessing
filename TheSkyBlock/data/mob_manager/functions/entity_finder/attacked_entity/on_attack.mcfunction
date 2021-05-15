#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacked_entity

#> Declare
# @private
    #declare score_holder $Count

# 初期化
    execute unless score $Count Temporary matches 0..15 run data modify storage mob_manager:attacked_entity BitData set value {0:0b,1:0b,2:0b,3:0b,4:0b,5:0b,6:0b,7:0b,8:0b,9:0b,10:0b,11:0b,12:0b,13:0b,14:0b,15:0b}
# 各bitチェック
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={0-1=true}}] run data modify storage mob_manager:attacked_entity BitData.0 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={1-1=true}}] run data modify storage mob_manager:attacked_entity BitData.1 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={2-1=true}}] run data modify storage mob_manager:attacked_entity BitData.2 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={3-1=true}}] run data modify storage mob_manager:attacked_entity BitData.3 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={4-1=true}}] run data modify storage mob_manager:attacked_entity BitData.4 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={5-1=true}}] run data modify storage mob_manager:attacked_entity BitData.5 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={6-1=true}}] run data modify storage mob_manager:attacked_entity BitData.6 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={7-1=true}}] run data modify storage mob_manager:attacked_entity BitData.7 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={8-1=true}}] run data modify storage mob_manager:attacked_entity BitData.8 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={9-1=true}}] run data modify storage mob_manager:attacked_entity BitData.9 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={10-1=true}}] run data modify storage mob_manager:attacked_entity BitData.10 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={11-1=true}}] run data modify storage mob_manager:attacked_entity BitData.11 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={12-1=true}}] run data modify storage mob_manager:attacked_entity BitData.12 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={13-1=true}}] run data modify storage mob_manager:attacked_entity BitData.13 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={14-1=true}}] run data modify storage mob_manager:attacked_entity BitData.14 set value 1b
    execute if entity @s[advancements={mob_manager:entity_finder/check_attacked_entity={15-1=true}}] run data modify storage mob_manager:attacked_entity BitData.15 set value 1b
# 処理数記録
    scoreboard players add $Count Temporary 1
# 最後のbit処理後
    # tag付け
        tag @s add this
    # フィルタ
        execute if score $Count Temporary matches 16 as @e[type=#lib:living,type=!player,nbt=!{HurtTime:0s},distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
        execute if score $Count Temporary matches 16 as @e[type=#lib:living,type=!player,tag=LibraryDamage,distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
    # リセット
        execute if score $Count Temporary matches 16 run tag @s remove LibraryDamage
        execute if score $Count Temporary matches 16 run data remove storage mob_manager:attacked_entity BitData
        execute if score $Count Temporary matches 16 run scoreboard players reset $Count Temporary
# リセット
    advancement revoke @s only mob_manager:entity_finder/check_attacked_entity