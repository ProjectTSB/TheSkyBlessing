#> asset_manager:artifact/triggers/attack/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# tellraw @a [{"text":"ArtifactEvents: "},{"storage":"asset:artifact","nbt":"ArtifactEvents"}]
# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# イベントを順に発火する
    function asset_manager:artifact/triggers/attack/foreach
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/new/revert_from_current
