#> asset:artifact/0743.evening_wind/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0743.evening_wind/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $ItemCount

# まだ持ってるか確認する
    execute store result score $ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:743}}}]

# なければ削除
    execute if score $ItemCount Temporary matches ..0 run function asset:artifact/0743.evening_wind/trigger/dis_equip/remove_modifier

# リセット
    scoreboard players reset $ItemCount Temporary