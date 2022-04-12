#> lib:message/tutorial/religion
#
# 「◆ 信仰について
#   あなた[たち]は信仰する神を選ぶことができ、それにより様々な恩恵が受けることが出来ます。
#   もちろん改宗もすることが出来ますが、それは非常に冒涜的なことであることを覚えておいてください。」
#
# @within function world_manager:area/01-04.tutorial-religion

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 信仰について\n","color":"light_purple"},{"text":"あなたは信仰する神を選ぶことができ、それにより様々な恩恵が受けることが出来ます。\nもちろん改宗もすることが出来ますが、それは非常に冒涜的なことであることを覚えておいてください。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 信仰について\n","color":"light_purple"},{"text":"あなたたちは信仰する神を選ぶことができ、それにより様々な恩恵が受けることが出来ます。\nもちろん改宗もすることが出来ますが、それは非常に冒涜的なことであることを覚えておいてください。","color":"white"}]