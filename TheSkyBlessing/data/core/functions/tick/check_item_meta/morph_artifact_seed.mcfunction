#> core:tick/check_item_meta/morph_artifact_seed
#
# 主にloot_tableから直截生成されるアイテムArtifactSeed(不定な神器)を、
# 所持しているIDに基づいて神器に変化させます
#
# @within function core:tick/check_item_meta/entity

# 変化先の神器IDを所持して無かったら何もせず終了
    execute unless data storage core:temp TSB.ArtifactSeed.ID run return 0
# IDから神器アイテムを取得
    data modify storage api: Argument.ID set from storage core:temp TSB.ArtifactSeed.ID
    function api:artifact/storage/from_id
# アイテムを神器アイテムに置き換え
    data modify entity @s Item set from storage api: Return.Artifact
