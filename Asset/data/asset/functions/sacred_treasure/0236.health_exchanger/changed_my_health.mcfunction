#> asset:sacred_treasure/0236.health_exchanger/changed_my_health
#
# 体力を@s
#
# Scoreのリセットの実装上分離
#
# @within function asset:sacred_treasure/0236.health_exchanger/3.main

#> private
# @private
    #declare tag HasMaxHealth
    #declare score_holder $MyHealthDecimal
    #declare score_holder $MyHealthInt
    #declare score_holder $TargetHealthDecimal
    #declare score_holder $TargetHealthInt

    # 体力設定
        scoreboard players operation $Set Lib = @a[tag=this,limit=1] Temporary
        execute as @a[tag=HasMaxHealth] run function lib:score_to_health_wrapper/set

    # 表示用体力演算
        # //下のx.xx部分
        scoreboard players operation $MyHealthInt Temporary = @s Temporary
        scoreboard players operation $MyHealthDecimal Temporary = $MyHealthInt Temporary

        scoreboard players operation $MyHealthInt Temporary /= $100 Const
        scoreboard players operation $MyHealthDecimal Temporary %= $100 Const

        # //下のy.yy部分
        scoreboard players operation $TargetHealthInt Temporary = @a[tag=this,limit=1] Temporary
        scoreboard players operation $TargetHealthDecimal Temporary = $TargetHealthInt Temporary

        scoreboard players operation $TargetHealthInt Temporary /= $100 Const
        scoreboard players operation $TargetHealthDecimal Temporary %= $100 Const

    # 表示 「A と体力が交換された！ x.xx(A) <=> y.yy(B)」
        tellraw @s [{"selector":"@a[tag=this,limit=1]"},{"text": " と体力が交換された！ "},{"score":{"name": "$MyHealthInt","objective": "Temporary"}},".",{"score":{"name": "$MyHealthDecimal","objective": "Temporary"}},"(",{"selector":"@a[tag=this,limit=1]"},")",{"text": " <=> "},{"score":{"name": "$TargetHealthInt","objective": "Temporary"}},".",{"score":{"name": "$TargetHealthDecimal","objective": "Temporary"}},"(",{"selector":"@s"},")"]