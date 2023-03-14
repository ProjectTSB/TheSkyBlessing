#> asset:artifact/0033.magic_shield/trigger/3.1.loop
#
# ループ
#
# @within function
#       asset:artifact/0033.magic_shield/trigger/3.main
#       asset:artifact/0033.magic_shield/trigger/rejoin_process
#       asset:artifact/0033.magic_shield/trigger/3.1.loop

# 効果を与える
    effect give @a[tag=X.MagicShield] resistance 1 3

# 再帰
    execute if entity @a[tag=X.MagicShield,limit=1] run schedule function asset:artifact/0033.magic_shield/trigger/3.1.loop 1t replace