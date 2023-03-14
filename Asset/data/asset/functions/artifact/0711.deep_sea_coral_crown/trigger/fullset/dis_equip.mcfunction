#> asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0711.deep_sea_coral_crown/trigger/dis_equip/main
#   asset:artifact/0712.deep_sea_coral_raiment/trigger/dis_equip/main
#   asset:artifact/0713.deep_sea_coral_leggings/trigger/dis_equip/main
#   asset:artifact/0714.deep_sea_coral_boots/trigger/dis_equip/main

# タグを消す
    tag @s remove JR.Fullset

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,711,0]
    function api:modifier/attack/water/remove