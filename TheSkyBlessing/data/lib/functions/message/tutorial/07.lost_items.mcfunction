#> lib:message/tutorial/07.lost_items
#
# 回収されたアイテムは島を浄化すれば*返還*される。
# 回収されたアイテムの一部であれば、神に慈悲を乞うことでも取り戻せる。
#
# @within function world_manager:area/00-07.tutorial-lost_items

tellraw @s ["",{"text":"◆-------\n","color":"dark_gray"},{"text":"回収されたアイテムは島を浄化すれば"},{"text":"返還","color":"green"},{"text":"される。\n回収されたアイテムの一部であれば、神に慈悲を乞うことでも取り戻せる。"}]
