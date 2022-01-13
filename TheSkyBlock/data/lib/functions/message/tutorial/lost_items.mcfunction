#> lib:message/tutorial/lost_items
#
# 「◆ 失ったアイテムについて
#   あなた[たち]の所持しているアイテムは死亡時、信仰する神によって保管され、島の呪いを解くことで全て返還されます。
#   しかし、アイテムを失いすぎて詰まってしまった場合等は信仰する神に慈悲を乞うのもありでしょう。
#   ですが、神は相応の対価を要求してくることを忘れない様にしてください。
#   また、改宗する際に保管されているそのプレイヤーのアイテムは**全て失われる**ことに留意する必要があります。」
#
# @within function world_manager:area/01-06.tutorial-lost_items

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 失ったアイテムについて\n","color":"light_purple"},{"text":"あなたの所持しているアイテムは死亡時、信仰する神によって保管され、島を浄化することで全て返還されます。\nしかし、アイテムを失いすぎて詰まってしまった場合等は信仰する神に慈悲を乞うのもありでしょう。\nですが、神は相応の対価を要求してくることを忘れない様にしてください。\nまた、改宗する際に保管されているそのプレイヤーのアイテムは","color":"white"},{"text":"全て失われる","bold":true,"color":"light_purple"},{"text":"ことに留意する必要があります。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 失ったアイテムについて\n","color":"light_purple"},{"text":"あなたたちの所持しているアイテムは死亡時、信仰する神によって保管され、島の浄化することで全て返還されます。\nしかし、アイテムを失いすぎて詰まってしまった場合等は信仰する神に慈悲を乞うのもありでしょう。\nですが、神は相応の対価を要求してくることを忘れない様にしてください。\nまた、改宗する際に保管されているそのプレイヤーのアイテムは","color":"white"},{"text":"全て失われる","bold":true,"color":"light_purple"},{"text":"ことに留意する必要があります。","color":"white"}]