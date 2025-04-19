#> lib:message/tutorial/06.tomb
#
# あなた[たち]が死んだ時、その場には持ち物が埋まった*墓*が建つ。
# 墓に辿り着けば持ち物を取り戻せるが、その前に命を落とせば神に没収される。
# 墓に対して、"keybind":"key.use"で持ち物を取り戻せるが、
# その前に命を落とせば神に没収される。
# 奈落へ落ちると墓は建たず、そのまま没収される。
#
# @within function world_manager:area/00-06.tutorial-tomb

execute if score $PlayerCount Global matches ..1 run tellraw @s ["",{"text":"◆------\n","color":"dark_gray"},{"text":"あなたが死んだ時、その場には持ち物が埋まった"},{"text":"墓","color":"dark_green"},{"text":"が建つ。\n墓に対して、"},{"keybind":"key.use"},{"text":"で持ち物を取り戻せるが、\nその前に命を落とせば神に没収される。\n奈落へ落ちると墓は建たず、そのまま没収される。"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s ["",{"text":"◆------\n","colo":"dark_gray"},{"text":"あなたたちが死んだ時、その場には持ち物が埋まった"},{"text":"墓","color":"dark_green"},{"text":"が建つ。\n墓に対して、"},{"keybind":"key.use"},{"text":"で持ち物を取り戻せるが、\nその前に命を落とせば神に没収される。\n奈落へ落ちると墓は建たず、そのまま没収される。"}]
