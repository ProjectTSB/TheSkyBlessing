#> lib:message/tutorial/04.gods
#
# この世界には５柱の*神*が在り、あなた[たち]は[それぞれ]いずれかの神を信仰できる。
# 信仰により、あなた[たち]は神器を扱う力と多様な恩恵を得られる。
# 冒涜的な行為ではあるものの、改宗も可能だ。
#
# @within function world_manager:area/00-04.tutorial-gods

execute if score $PlayerCount Global matches ..1 run tellraw @s ["",{"text":"◆----\n","color":"dark_gray"},{"text":"この世界には５柱の"},{"text":"神","color":"gold"},{"text":"が在り、あなたはいずれかの神を信仰できる。\n信仰により、あなたは神器を扱う力と多様な恩恵を得られる。\n冒涜的な行為ではあるものの、改宗も可能だ。"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s ["",{"text":"◆----\n","color":"dark_gray"},{"text":"この世界には５柱の"},{"text":"神","color":"gold"},{"text":"が在り、あなたたちはそれぞれいずれかの神を信仰できる。\n信仰により、あなたたちは神器を扱う力と多様な恩恵を得られる。\n冒涜的な行為ではあるものの、改宗も可能だ。"}]
