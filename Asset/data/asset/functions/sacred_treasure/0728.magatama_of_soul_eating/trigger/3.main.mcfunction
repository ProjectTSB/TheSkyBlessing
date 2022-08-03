#> asset:sacred_treasure/0728.magatama_of_soul_eating/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0728.magatama_of_soul_eating/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Count
    #declare score_holder $MaxHP10Per
    #declare score_holder $MaxHP5Per

# 演出
    particle soul ~ ~1.2 ~ 0.5 0.3 0.5 0 15 normal @a
    particle dust 0 0.5 0.5 1 ~ ~1.2 ~ 0.5 0.3 0.5 0 15 normal @a
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.8
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.6
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.4

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:728}}}]

# 最大HPの10％を100倍で取る
    execute store result score $MaxHP10Per Temporary run attribute @s generic.max_health get 10

# 2個以上所持していた場合、最大体力×5％×(N-1)だけ回復量が増加する処理

# 5％分を100倍で取得
    execute if score $Count Temporary matches 2.. store result score $MaxHP5Per Temporary run attribute @s generic.max_health get 5

# 個数分掛け算
    execute if score $Count Temporary matches 2.. run scoreboard players operation $MaxHP5Per Temporary *= $Count Temporary

# 合算してArgument.Healに代入
    execute store result storage lib: Argument.Heal float 0.01 run scoreboard players operation $MaxHP10Per Temporary += $MaxHP5Per Temporary

# 回復処理
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $MaxHP10Per Temporary
    scoreboard players reset $MaxHP5Per Temporary