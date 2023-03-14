#> asset:artifact/0986.order_of_healing/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0986.order_of_healing/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $RE.ItemCount

# まだ持ってるか確認する
    execute store result score $RE.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:986}}}]

# なければ削除
    execute if score $RE.ItemCount Temporary matches ..0 run function asset:artifact/0986.order_of_healing/trigger/dis_equip/remove_modifier

# リセット
    scoreboard players reset $RE.ItemCount Temporary