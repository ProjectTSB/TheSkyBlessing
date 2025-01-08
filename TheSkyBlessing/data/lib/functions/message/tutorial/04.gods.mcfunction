#> lib:message/tutorial/04.gods
#
# 「◆ 信仰について
#   あなた[たち]は信仰する神を5柱の中から自由に選ぶことができ、様々な恩恵を受けることが出来ます。
#   もちろん改宗することも可能ですが、非常に冒涜的な行為であることに注意してください。」
#
# @within function world_manager:area/00-04.tutorial-gods

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 信仰について\n","color":"light_purple"},{"text":"あなたは信仰する神を5柱の中から自由に選ぶことができ、様々な恩恵を受けることが出来ます。\nもちろん改宗することも可能ですが、非常に冒涜的な行為であることに注意してください。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 信仰について\n","color":"light_purple"},{"text":"あなたたちは信仰する神を5柱の中から自由に選ぶことができ、様々な恩恵を受けることが出来ます。\nもちろん改宗することも可能ですが、非常に冒涜的な行為であることに注意してください。","color":"white"}]
