#> lib:message/tutorial/island
#
# 「◆ 島について
#   多くの島は島の中に置かれている呪われた神器による力で呪われています。
#   それを浄化することがあなた[たち]の目標です。
#   解呪の方法は、呪われた神器の周囲でスニークをして神に祈りを捧げ続けることです。
#   ただし、少しでも動いてしまった場合解呪はやり直しになってしまうので注意しましょう。」
#
# @within function world_manager:area/01-02.tutorial-island

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 島について\n","color":"light_purple"},{"text":"多くの島は島の中に置かれている呪われた神器による力で呪われています。\nそれを浄化することがあなたの目標です。\n解呪の方法は、呪われた神器の周囲でスニークをして神に祈りを捧げ続けることです。\nただし、少しでも動いてしまった場合解呪はやり直しになってしまうので注意しましょう。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 島について\n","color":"light_purple"},{"text":"多くの島は島の中に置かれている呪われた神器による力で呪われています。\nそれを浄化することがあなたたちの目標です。\n解呪の方法は、呪われた神器の周囲でスニークをして神に祈りを捧げ続けることです。\nただし、少しでも動いてしまった場合解呪はやり直しになってしまうので注意しましょう。","color":"white"}]