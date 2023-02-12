#> asset:sacred_treasure/1027.kyrie/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1027.kyrie/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0

# 魔法陣設置
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYALAGYUCGFAbAEbUC0A7AMwCMRzZRAHACZm-AJzsAxszpFBRaq278ycTmFwZqAWwTJAW74ACNbhjUATtoDOScBID2eDBCQBWXBTN2tNsADdqKHi64AAeSNK4UEgADAC+sbgQdj7+gcFgYYh0kTHxuHZUlnDOiNG4DHAAXmhwZjG4aJYAQlU1ZgCiAI54AShQAMqmEnAkiDQoRXng0PCk6Fjq+ISjYJJEZOzULgwiguzCZJxw7MzU1Jz8zHASrHCirBL8dIJ3i5o6pIaczPYwUSbmKw+eyOErsdyebyIcCpII+TLSAB0bjAUUQzHYiP4eUgyWhfgCcPxmTKqNyCTABQoRRKpIq1Vq4U4iOyYEaLQZHW6vQGQxGSHGkwS01gulQmBwS2IpFYdBcgjoZ2+LjgdDgvHYNGYDAYFFEzCIrFYur49AoDDIb20Yq+Pzsfztf0WpgsWms+JBTiQ4LAHi8KUJ6UydGROXRmOxFKSAbS8PqZNKOKpNPj9LaSGZrPZrVqXR6KD6g2ow1Ggrg8QAukA_3
    # 線 1
    execute anchored eyes positioned ^-6 ^ ^ positioned ~ ~0 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    execute anchored eyes positioned ^-3 ^ ^ positioned ~ ~0 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    execute anchored eyes positioned ^3 ^ ^ positioned ~ ~0 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    execute anchored eyes positioned ^6 ^ ^ positioned ~ ~0 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    # 線 1-copy
    execute anchored eyes positioned ^-6.5 ^ ^ positioned ~ ~3.8 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    execute anchored eyes positioned ^-3.65376 ^ ^ positioned ~ ~1.20936 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    # 線 1-copy-copy
    execute anchored eyes positioned ^6.5 ^ ^ positioned ~ ~3.8 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset
    execute anchored eyes positioned ^3.65376 ^ ^ positioned ~ ~1.20936 ~ run function asset:sacred_treasure/1027.kyrie/trigger/magicset

# 魔法陣実行
    function asset:sacred_treasure/1027.kyrie/trigger/4.magic_circle