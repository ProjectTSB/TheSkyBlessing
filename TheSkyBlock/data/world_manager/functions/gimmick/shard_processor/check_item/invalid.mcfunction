#> world_manager:gimmick/shard_processor/check_item/invalid
#
# シャード以外のアイテムが入ったときにはじき出す処理
#
# @within function world_manager:gimmick/shard_processor/check_item/

# 額縁の中身を消す
    data modify entity @s ItemRotation set value 0b
    item replace entity @s container.0 with air

# お返しする
    data modify storage world_manager:gimmick Items set value []
    data modify storage world_manager:gimmick Items append from storage world_manager:gimmick FrameData.Item
    data modify storage world_manager:gimmick Items[-1].Slot set value 0b
    data modify block 10000 0 10000 Items set from storage world_manager:gimmick Items
    loot spawn -33.8 21.5 -13.5 mine 10000 0 10000 debug_stick