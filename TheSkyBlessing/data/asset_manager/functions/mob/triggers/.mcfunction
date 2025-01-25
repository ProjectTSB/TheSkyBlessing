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
    execute store result storage asset:context originID int 1 run scoreboard players get @s MobID
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField
# イベント情報を取得
    data modify storage asset:mob MobEvents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents set value {}
# トリガーの呼び出し
    function asset_manager:mob/triggers/tick/
    execute if data storage asset:mob MobEvents.Attack[0] run function asset_manager:mob/triggers/attack/foreach
    execute if data storage asset:mob MobEvents.Hurt[0] run function asset_manager:mob/triggers/hurt/foreach
    execute if data storage asset:mob MobEvents.Death[0] run tag @s add Kill
    execute if data storage asset:mob MobEvents.Death[1] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"MOB に複数の死亡イベントが含まれています。\n","color":"white"},{"storage":"asset:mob","nbt":"MobEvents.Death[]","separator":"\n"}]
    execute if data storage asset:mob MobEvents.Death[0] if entity @s[tag=Enemy.Boss] run function metric:angel/kill.m with storage asset:context
    execute if data storage asset:mob MobEvents.Death[0] run function asset_manager:mob/triggers/death/foreach
    execute if entity @s[tag=RemovingEntity] run function asset_manager:mob/triggers/remove/
    execute if entity @s[tag=RemovingEntity] run function asset_manager:mob/triggers/remove/kill
# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
# 死んでいたら呼び出さないようにする
    execute if score @s MobUUID matches -2147483648..2147483647 run function oh_my_dat:please
# フィールドを元に戻す
    execute if score @s MobUUID matches -2147483648..2147483647 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this
# リセット
    data remove storage asset:context id
    data remove storage asset:context this
    tag @s remove this
# 死んでいたらスコアを完全に削除する
    execute unless score @s MobUUID matches -2147483648..2147483647 run scoreboard players reset @s
