#> lib:message/tutorial/02.curse
#
# 目の前にあるのは*呪われた神器*。 島の呪いの根源だ。
# あなた[たち]はこの呪いを浄化しなければならない。
# 近づいて祈りを捧げれば（動かずにShift長押し）浄化できる。
#
# @within function world_manager:area/00-02.tutorial-curse

execute if score $PlayerCount Global matches ..1 run tellraw @s ["",{"text":"◆--\n","color":"dark_gray"},{"text":"目の前にあるのは"},{"text":"呪われた神器","color":"red"},{"text":"。 島の呪いの根源だ。\nあなたはこの呪いを浄化しなければならない。\n近づいて祈りを捧げれば（動かずに"},{"keybind":"key.sneak"},{"text":"長押し）浄化できる。"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s ["",{"text":"◆--\n","color":"dark_gray"},{"text":"目の前にあるのは"},{"text":"呪われた神器","color":"red"},{"text":"。 島の呪いの根源だ。\nあなたたちはこの呪いを浄化しなければならない。\n近づいて祈りを捧げれば（動かずに"},{"keybind":"key.sneak"},{"text":"長押し）浄化できる。"}]
