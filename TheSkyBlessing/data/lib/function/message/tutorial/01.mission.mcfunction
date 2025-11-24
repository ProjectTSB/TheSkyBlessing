#> lib:message/tutorial/01.mission
#
# この世界の島々は、呪われている。
# ――あなた[たち]の目標はただ一つ。 **この世界の全てを浄化**すること。
#
# @within function world_manager:area/00-01.tutorial-mission

execute if score $PlayerCount Global matches ..1 run tellraw @s ["",{"text":"◆-\n","color":"dark_gray"},{"text":"この世界の島々は、呪われている。\n"},{"text":"　　","strikethrough":true},{"text": "あなたの目標はただ一つ。 "},{"text":"この世界の全てを浄化","bold":true},{"text":"すること。"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s ["",{"text":"◆-\n","color":"dark_gray"},{"text":"この世界の島々は、呪われている。\n"},{"text":"　　","strikethrough":true},{"text": "あなたたちの目標はただ一つ。 "},{"text":"この世界の全てを浄化","bold":true},{"text":"すること。"}]
