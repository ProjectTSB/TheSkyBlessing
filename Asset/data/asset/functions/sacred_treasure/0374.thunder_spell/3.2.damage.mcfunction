#> asset:sacred_treasure/0374.thunder_spell/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0374.thunder_spell/3.1.line

# ここから先は神器側の効果の処理を書く

# タグチェック用
    tag @s add 64.Check
# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ = 7
        data modify storage lib: Argument.Damage set value 7f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..1,sort=nearest,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument