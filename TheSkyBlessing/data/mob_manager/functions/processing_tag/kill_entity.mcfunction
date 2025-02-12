#> mob_manager:processing_tag/kill_entity
#
#
#
# @within function mob_manager:processing_tag/

# AssetMob ならばスポナーの HP を減らそうとする
    execute if function api:mob/is_asset_mob store result storage api: Argument.MobID int 1 run scoreboard players get @s MobID
    execute if function api:mob/is_asset_mob run function api:spawner/subtract_hp

# 絶対に消し飛ばす
    effect clear @s resistance
    attribute @s generic.armor modifier add 3-0-0-0-1 "kill modifier" -1 multiply
    attribute @s generic.armor_toughness modifier add 3-0-0-0-1 "kill modifier" -1 multiply
    damage @s 9999 generic_kill
