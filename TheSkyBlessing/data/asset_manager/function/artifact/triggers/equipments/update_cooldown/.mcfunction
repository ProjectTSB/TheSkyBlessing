#> asset_manager:artifact/triggers/equipments/update_cooldown/
#
#
#
# @within function asset_manager:artifact/triggers/

# UserStorage取得
    function oh_my_dat:please
# セッション開く
    function lib:array/session/open
# 配列として取得
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.offhand.components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.feet.components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.legs.components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.chest.components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.head.components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[0].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[1].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[2].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[3].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[4].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[5].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[6].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[7].components."minecraft:custom_data".TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[8].components."minecraft:custom_data".TSB
# それぞれについて更新
    function asset_manager:artifact/triggers/equipments/update_cooldown/foreach
# 反転
    function lib:array/reverse
# 設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown set from storage lib: Array
# リセット
    function lib:array/session/close
    data remove storage asset:artifact ItemData
    scoreboard players reset $Tick Temporary
    scoreboard players reset $LatestUsedTick Temporary
