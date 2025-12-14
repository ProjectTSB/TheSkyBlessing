#> player_manager:play_equip_sound/play
#
# 新しい装備品アイテムに応じた装着音を鳴らします。
#
# @within function player_manager:play_equip_sound/validate


# leather
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Leather
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_leather player @a ~ ~ ~
# chain
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Chain
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_chain player @a ~ ~ ~
# diamond
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Diamond
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_diamond player @a ~ ~ ~
# iron
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Iron
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~
# gold
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Gold
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_gold player @a ~ ~ ~
# netherite
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Netherite
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_netherite player @a ~ ~ ~
# elytra
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Elytra
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_elytra player @a ~ ~ ~
# turtle
    data modify storage lib: CompareTarget set from storage player_manager:equip_sound Item.New.id
    data modify storage lib: Array set from storage player_manager:equip_sound Sounds.Turtle
    function lib:array/compare_single
    execute if data storage lib: {CompareResult:[{_:{_:true}}]} run return run playsound disabled_sounds:item.armor.equip_turtle player @a ~ ~ ~


# 未定義の防具でもない限りここに処理は到達しないはず。
