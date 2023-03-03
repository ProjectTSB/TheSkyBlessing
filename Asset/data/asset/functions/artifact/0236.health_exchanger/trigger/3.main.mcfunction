#> asset:artifact/0236.health_exchanger/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0236.health_exchanger/trigger/2.check_condition

#> private
# @private
    #declare tag HasMaxHealth
    #declare score_holder $MaxHealth 鯖民の最大体力が代入されています
    #declare score_holder $UserHealthDecimal 神器使用者の体力整数部分が代入されています
    #declare score_holder $UserHealthInt 神器使用者の体力小数部分が代入されています
    #declare score_holder $TargetHealthDecimal 体力交換先の体力整数部分をが代入されています
    #declare score_holder $TargetHealthInt 体力交換先の体力小数部分が代入されています
    #declare score_holder $SCUserHealth

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # //この時点で $SCUserHealthと$MaxHealth,@a のTemporaryに体力が代入済み & hasMaxHealthTag付与済み
    # 処理
        # 演算
            # //神器使用者の体力
            scoreboard players operation $UserHealthInt Temporary = $SCUserHealth Temporary
            scoreboard players operation $UserHealthDecimal Temporary = $SCUserHealth Temporary

            scoreboard players operation $UserHealthInt Temporary /= $100 Const
            scoreboard players operation $UserHealthDecimal Temporary %= $100 Const

        # 神器使用者の体力をMaxHealthに変更
            scoreboard players operation $Set Lib = $MaxHealth Temporary
            function lib:score_to_health_wrapper/set
        # @a[tag=HasMaxHealth] の体力を変更
            execute as @a[tag=HasMaxHealth] at @s run function asset:artifact/0236.health_exchanger/trigger/changed_my_health

    # 演出
        # 演算
            # //交換先の体力
            scoreboard players operation $TargetHealthInt Temporary = $MaxHealth Temporary
            scoreboard players operation $TargetHealthDecimal Temporary = $MaxHealth Temporary

            scoreboard players operation $TargetHealthInt Temporary /= $100 Const
            scoreboard players operation $TargetHealthDecimal Temporary %= $100 Const
        # メッセージ「A と体力を交換した！ x.xx => y.yy」
            tellraw @s [{"text":"","color": "yellow"},{"selector":"@a[tag=HasMaxHealth]","color": "yellow"},{"text": " と体力を交換した！ "},{"score":{"name": "$UserHealthInt","objective": "Temporary"}},".",{"score":{"name": "$UserHealthDecimal","objective": "Temporary"}},{"text": " => "},{"score":{"name": "$TargetHealthInt","objective": "Temporary"}},".",{"score":{"name": "$TargetHealthDecimal","objective": "Temporary"}}]

        #パーティクル & 音
            particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a
            execute as @a[tag=HasMaxHealth] at @s run particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a

            playsound ui.button.click player @s ~ ~ ~ 1 1 1
            execute as @a[tag=HasMaxHealth] at @s run playsound ui.button.click player @s ~ ~ ~ 1 1 1

    # リセット
        scoreboard players reset $UserHealthInt Temporary
        scoreboard players reset $UserHealthDecimal Temporary
        scoreboard players reset $TargetHealthInt Temporary
        scoreboard players reset $TargetHealthDecimal Temporary