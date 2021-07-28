#> asset:sacred_treasure/0522.humanism/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0522.humanism/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.enchantment_table.use master @a ~ ~ ~ 1 0 1
    particle flash ~ ~ ~ 1 1 1 1 100

# HP回復処理
    # 全プレイヤー全回復
            data modify storage lib: Argument.Heal set value 10000f
            function lib:heal/modifier
            execute as @a run function lib:heal/
            data remove storage lib: Argument

# MP回復処理
    # 自身以外のプレイヤー全回復
            scoreboard players set $Fluctuation Lib 10000
            execute as @a[tag=!this] run function lib:mp/fluctuation

# ダメージ処理
    # 全プレイヤーの周囲50Mの敵に魔法・水属性ダメージ
        data modify storage lib: Argument.Damage set value 200f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute at @a as @e[tag=Enemy,tag=!Uninterferable,distance=..50] run function lib:damage/
        data remove storage lib: Argument