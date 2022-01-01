#> asset:sacred_treasure/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/3.main