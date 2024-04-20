#> world_manager:gimmick/_index.d
# @private

#> Storage
# @within world_manager:gimmick/**
    #declare storage world_manager:gimmick

#> Tag
# @within world_manager:gimmick/shard_processor/**
    #alias entity ShardProcessor @e[type=glow_item_frame,tag=ShardProcessor,distance=..0.4,x=-34.0,y=21.5,z=-13.5,limit=1]
    #declare tag ShardProcessor
    #declare tag ShardProcessorModel