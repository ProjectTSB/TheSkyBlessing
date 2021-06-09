#> asset:sacred_treasure/0033.magic_shield/3.1.loop
#
# ループ
#
# @within function
#       asset:sacred_treasure/0033.magic_shield/3.main
#       asset:sacred_treasure/0033.magic_shield/rejoin_process
#       asset:sacred_treasure/0033.magic_shield/3.1.loop

# データ取得
    execute as @a[tag=X.MagicShield] run function asset:sacred_treasure/0033.magic_shield/3.2.take_damage

# 効果を与える
    effect give @a[tag=X.MagicShield] resistance 1 3

# 再帰
    execute if entity @a[tag=X.MagicShield,limit=1] run schedule function asset:sacred_treasure/0033.magic_shield/3.1.loop 1t replace