#> asset_manager:artifact/triggers/equipments/get_equip_list
#
# 装備一覧を取得する
#
# @within function asset_manager:artifact/triggers/

# 配列として取得
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.mainhand.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.offhand.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.feet.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.legs.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.chest.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.head.tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[0].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[1].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[2].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[3].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[4].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[5].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[6].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[7].tag.TSB
    data modify storage asset:artifact ItemData append from storage asset:context New.Items.hotbar[8].tag.TSB
