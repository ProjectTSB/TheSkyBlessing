#> asset:artifact/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:context idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:183} run function asset:artifact/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/2.check_condition