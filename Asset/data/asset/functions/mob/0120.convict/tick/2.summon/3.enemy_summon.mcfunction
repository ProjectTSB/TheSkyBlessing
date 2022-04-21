#> asset:mob/0120.convict/tick/2.summon/3.enemy_summon
#
#
#
# @within function asset:mob/0120.convict/tick/2.summon/1.summon

# プレイヤー位置にテレポーター召喚
    data modify storage api: Argument.ID set value 90
    function api:mob/summon

# 演出
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 0
# 多角形 1
    particle witch ~ ~ ~ 0 0.3 -2 0.2 0
    particle witch ~ ~ ~ 0.19021 0.3 -1.8618 0.2 0
    particle witch ~ ~ ~ 0.38042 0.3 -1.72361 0.2 0
    particle witch ~ ~ ~ 0.57063 0.3 -1.58541 0.2 0
    particle witch ~ ~ ~ 0.76085 0.3 -1.44721 0.2 0
    particle witch ~ ~ ~ 0.95106 0.3 -1.30902 0.2 0
    particle witch ~ ~ ~ 1.14127 0.3 -1.17082 0.2 0
    particle witch ~ ~ ~ 1.33148 0.3 -1.03262 0.2 0
    particle witch ~ ~ ~ 1.52169 0.3 -0.89443 0.2 0
    particle witch ~ ~ ~ 1.7119 0.3 -0.75623 0.2 0
    particle witch ~ ~ ~ 1.90211 0.3 -0.61803 0.2 0
    particle witch ~ ~ ~ 1.82946 0.3 -0.39443 0.2 0
    particle witch ~ ~ ~ 1.7568 0.3 -0.17082 0.2 0
    particle witch ~ ~ ~ 1.68415 0.3 0.05279 0.2 0
    particle witch ~ ~ ~ 1.6115 0.3 0.27639 0.2 0
    particle witch ~ ~ ~ 1.53884 0.3 0.5 0.2 0
    particle witch ~ ~ ~ 1.46619 0.3 0.72361 0.2 0
    particle witch ~ ~ ~ 1.39353 0.3 0.94721 0.2 0
    particle witch ~ ~ ~ 1.32088 0.3 1.17082 0.2 0
    particle witch ~ ~ ~ 1.24822 0.3 1.39443 0.2 0
    particle witch ~ ~ ~ 1.17557 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ 0.94046 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ 0.70534 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ 0.47023 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ 0.23511 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ 0 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -0.23511 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -0.47023 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -0.70534 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -0.94046 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -1.17557 0.3 1.61803 0.2 0
    particle witch ~ ~ ~ -1.24822 0.3 1.39443 0.2 0
    particle witch ~ ~ ~ -1.32088 0.3 1.17082 0.2 0
    particle witch ~ ~ ~ -1.39353 0.3 0.94721 0.2 0
    particle witch ~ ~ ~ -1.46619 0.3 0.72361 0.2 0
    particle witch ~ ~ ~ -1.53884 0.3 0.5 0.2 0
    particle witch ~ ~ ~ -1.6115 0.3 0.27639 0.2 0
    particle witch ~ ~ ~ -1.68415 0.3 0.05279 0.2 0
    particle witch ~ ~ ~ -1.7568 0.3 -0.17082 0.2 0
    particle witch ~ ~ ~ -1.82946 0.3 -0.39443 0.2 0
    particle witch ~ ~ ~ -1.90211 0.3 -0.61803 0.2 0
    particle witch ~ ~ ~ -1.7119 0.3 -0.75623 0.2 0
    particle witch ~ ~ ~ -1.52169 0.3 -0.89443 0.2 0
    particle witch ~ ~ ~ -1.33148 0.3 -1.03262 0.2 0
    particle witch ~ ~ ~ -1.14127 0.3 -1.17082 0.2 0
    particle witch ~ ~ ~ -0.95106 0.3 -1.30902 0.2 0
    particle witch ~ ~ ~ -0.76085 0.3 -1.44721 0.2 0
    particle witch ~ ~ ~ -0.57063 0.3 -1.58541 0.2 0
    particle witch ~ ~ ~ -0.38042 0.3 -1.72361 0.2 0
    particle witch ~ ~ ~ -0.19021 0.3 -1.8618 0.2 0