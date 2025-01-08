#> lib:message/tutorial/06.tomb
#
# 「◆ 失ったアイテムについて
#   あなた[たち]の死亡時、所持していたアイテムはドロップする代わりに信仰する神によって全て保管されます。
#   保管されたアイテムは島を浄化することで全て神殿に返還されます。
#   島の浄化に苦戦する場合は信仰する神に対して慈悲を乞うのもありでしょう。」
#
# @within function world_manager:area/00-06.tutorial-tomb

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 失ったアイテムについて\n","color":"light_purple"},{"text":"あなたの死亡時、所持していたアイテムはドロップする代わりに信仰する神によって全て保管されます。\n保管されたアイテムは島を浄化することで全て神殿に返還されます。\n島の浄化に苦戦する場合は信仰する神に対して慈悲を乞うのもありでしょう。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 失ったアイテムについて\n","color":"light_purple"},{"text":"あなたたちの死亡時、所持していたアイテムはドロップする代わりに信仰する神によって全て保管されます。\n保管されたアイテムは島を浄化することで全て神殿に返還されます。\n島の浄化に苦戦する場合は信仰する神に対して慈悲を乞うのもありでしょう。","color":"white"}]
