#> debug:stopwatch.stop
#
# 負荷計測用のストップウォッチをストップします
#
# @debug
# @api

execute in the_nether store result score $MilliSecond Temporary run worldborder get
execute in the_nether run worldborder set 59999968
tellraw @a [{"text":"処理速度: "},{"score":{"objective":"Temporary","name":"$MilliSecond"}},{"text":"ms"}]
scoreboard players reset $MilliSecond Temporary