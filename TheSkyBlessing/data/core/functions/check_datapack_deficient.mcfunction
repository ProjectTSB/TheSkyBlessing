#> core:check_datapack_deficient
#
#
#
# @within function core:load

#> Private
# @private
    #declare score_holder $ExpectedDatapackCount
    #declare score_holder $ActualDatapackCount

# 取得
    execute store result score $ExpectedDatapackCount Temporary run data get storage global ExpectedDatapackCount
    execute store result score $ActualDatapackCount Temporary run datapack list
# 比較結果を保存しておく
    execute store result storage global IsDatapackDeficient byte 1 if score $ActualDatapackCount Temporary < $ExpectedDatapackCount Temporary
# リセット
    scoreboard players reset $ExpectedDatapackCount Temporary
    scoreboard players reset $ActualDatapackCount Temporary
