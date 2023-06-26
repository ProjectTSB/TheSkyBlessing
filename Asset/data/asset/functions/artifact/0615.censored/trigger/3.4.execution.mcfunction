#> asset:artifact/0615.censored/trigger/3.4.execution
#
# 雑魚モブの処刑
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute positioned ~ ~-0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~ ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.4 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.6 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.8 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    function asset:artifact/0615.censored/trigger/3.2.censored_object2
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30

# 効果
    tp ~ -30 ~
    kill @s