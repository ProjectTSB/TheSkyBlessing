#> asset:artifact/0522.humanism/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0522.humanism/trigger/2.check_condition

#>
# @private
#declare tag EI.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.enchantment_table.use player @a ~ ~ ~ 1 0 1
    particle flash ~ ~ ~ 1 1 1 1 100

# HP回復処理
    # 全プレイヤー全回復
        execute as @a run function asset:artifact/0522.humanism/trigger/heal

# MP回復処理
    execute as @a[tag=!this] run function asset:artifact/0522.humanism/trigger/mp_heal
# ダメージ処理
    # 全プレイヤーの周囲50Mの敵に魔法・水属性ダメージ
        data modify storage lib: Argument.Damage set value 1700f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute at @a run tag @e[tag=Enemy,tag=!Uninterferable,distance=..50] add EI.Target
        execute as @e[tag=EI.Target] run function lib:damage/
        function lib:damage/reset

# タグリセット
    execute at @a run tag @e[tag=EI.Target,tag=!Uninterferable,distance=..50] remove EI.Target