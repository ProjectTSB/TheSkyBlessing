#> asset:artifact/0057.elemental_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0057.elemental_sword/trigger/2.check_condition
#> private
# @private
    #declare score_holder $ElementalSwordAttack

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃の度に属性を変えるヤツ
    # 使用回数を取る
        execute store result score $ElementalSwordAttack Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    # 使用回数を3で剰余算
        scoreboard players operation $ElementalSwordAttack Temporary %= $3 Const
    # 属性を変える
        execute if score $ElementalSwordAttack Temporary matches 0 as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0057.elemental_sword/trigger/3.1.fireattack
        execute if score $ElementalSwordAttack Temporary matches 1 as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0057.elemental_sword/trigger/3.2.waterattack
        execute if score $ElementalSwordAttack Temporary matches 2 as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0057.elemental_sword/trigger/3.3.thunderattack
    # リセット
        scoreboard players reset $ElementalSwordAttack Temporary