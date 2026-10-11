#> lib:text/core/finish
#
# @within function
#   lib:text/measure
#   lib:text/measure_component

# 失敗時は途中まで計測した結果も削除する
    execute unless score $TextResult Temporary matches 1 run data remove storage lib: Return.Default
    execute unless score $TextResult Temporary matches 1 run data remove storage lib: Return.Unifont

# 作業領域と一時スコアを片付け、結果の有無で成否を返す
    data remove storage lib:text Work
    data remove storage lib:text Component
    scoreboard players reset $TextResult Temporary
    scoreboard players reset $TextValid Temporary
    scoreboard players reset $TextAdvance Temporary
    scoreboard players reset $TextWidth Temporary
    scoreboard players reset $TextGlyph Temporary
    scoreboard players reset $TextBold Temporary
    scoreboard players reset $TextOld Temporary
    scoreboard players reset $TextLength Temporary
    scoreboard players reset $TextEncoded Temporary
    scoreboard players reset $TextCursor Temporary
    scoreboard players reset $TextStart Temporary
    scoreboard players reset $TextAuto Temporary
    scoreboard players reset $TextArg Temporary
    scoreboard players reset $TextDigit Temporary
    scoreboard players reset $TextDefaultTotal Temporary
    scoreboard players reset $TextUniformTotal Temporary
    execute if data storage lib: Return.Unifont run return 1
    return fail
