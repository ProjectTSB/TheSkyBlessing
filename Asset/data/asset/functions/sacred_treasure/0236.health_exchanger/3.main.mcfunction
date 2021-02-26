#> asset:sacred_treasure/0236.health_exchanger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0236.health_exchanger/2.check_condition

#> private
# @private
    #declare score_holder $MaxHealth
    #declare tag HasMaxHealth
    #declare score_holder $MyHealthDecimal
    #declare score_holder $MyHealthInt
    #declare score_holder $TargetHealthDecimal
    #declare score_holder $TargetHealthInt

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

    # //この時点で $OwnHealthと$MaxHealth,@a のTemporaryに体力が代入済み & hasMaxHealthTag付与済み
    # 処理
        # @s の体力をMaxHealthに変更
            scoreboard players operation $Set Lib = $MaxHealth Temporary
            function lib:score_to_health_wrapper/set
        # @a[tag=HasMaxHealth] の体力を変更
            execute as @a[tag=HasMaxHealth] at @s run function asset:sacred_treasure/0236.health_exchanger/changed_my_health

    # 演出
        # 演算
            # //下のx.xx部分
            scoreboard players operation $MyHealthInt Temporary = @s Temporary
            scoreboard players operation $MyHealthDecimal Temporary = $MyHealthInt Temporary

            scoreboard players operation $MyHealthInt Temporary /= $100 Const
            scoreboard players operation $MyHealthDecimal Temporary %= $100 Const

            # //下のy.yy部分
            scoreboard players operation $TargetHealthInt Temporary = $MaxHealth Temporary
            scoreboard players operation $TargetHealthDecimal Temporary = $TargetHealthInt Temporary

            scoreboard players operation $TargetHealthInt Temporary /= $100 Const
            scoreboard players operation $TargetHealthDecimal Temporary %= $100 Const

        # メッセージ「A と体力を交換した！ x.xx(A) <=> y.yy(B)」
            tellraw @s [{"selector":"@a[tag=HasMaxHealth]"},{"text": " と体力を交換した！ "},{"score":{"name": "$MyHealthInt","objective": "Temporary"}},".",{"score":{"name": "$MyHealthDecimal","objective": "Temporary"}},"(",{"selector":"@a[tag=this,limit=1]"},")",{"text": " <=> "},{"score":{"name": "$TargetHealthInt","objective": "Temporary"}},".",{"score":{"name": "$TargetHealthDecimal","objective": "Temporary"}},"(",{"selector":"@a[tag=HasMaxHealth]"},")"]

        #パーティクル & 音
            particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a
            execute as @a[tag=HasMaxHealth] at @s run particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a

            playsound ui.button.click master @s ~ ~ ~ 1 1 1
            execute as @a[tag=HasMaxHealth] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1 1

    # リセット
        scoreboard players reset $MyHealthInt Temporary
        scoreboard players reset $MyHealthDecimal Temporary
        scoreboard players reset $TargetHealthInt Temporary
        scoreboard players reset $TargetHealthDecimal Temporary