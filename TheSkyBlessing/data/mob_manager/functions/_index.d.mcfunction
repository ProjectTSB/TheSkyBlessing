#> mob_manager:_index.d
# @private

#> General purpose Tag
# @public
    #declare tag Friend
    #declare tag Enemy
    #declare tag Enemy.Boss
    #declare tag Enemy.EndGameBoss
    #declare tag Projectile
    #declare tag Npc
    #declare tag Object
    #declare tag Uninterferable
    #declare tag Immovable

#> Storage
# @within function mob_manager:entity_finder/**
#declare storage mob_manager:entity_finder

#> InitTag
# @within function
#   core:tick/
#   mob_manager:init/
    #declare tag AlreadyInitMob

#> KillTag
# @within function
#   core:tick/
#   api:damage/core/health_subtract/non-player/
#   api:mob/kill
#   asset_manager:mob/triggers/
    #declare tag Kill

#> FlagIndex
# @within function
#   mob_manager:init/
#   asset_manager:island/dispel/boss/summon
    #declare score_holder $FlagIndex

#> FindFlag
# @within *
#   mob_manager:init/add_flag
#   mob_manager:entity_finder/**
#   api:damage/core/trigger_on_**
#   asset:mob/death/abstract_detect_item
    #declare tag FindFlag0.0
    #declare tag FindFlag0.1
    #declare tag FindFlag1.0
    #declare tag FindFlag1.1
    #declare tag FindFlag2.0
    #declare tag FindFlag2.1
    #declare tag FindFlag3.0
    #declare tag FindFlag3.1
    #declare tag FindFlag4.0
    #declare tag FindFlag4.1
    #declare tag FindFlag5.0
    #declare tag FindFlag5.1
    #declare tag FindFlag6.0
    #declare tag FindFlag6.1
    #declare tag FindFlag7.0
    #declare tag FindFlag7.1
    #declare tag FindFlag8.0
    #declare tag FindFlag8.1
    #declare tag FindFlag9.0
    #declare tag FindFlag9.1
    #declare tag FindFlag10.0
    #declare tag FindFlag10.1
    #declare tag FindFlag11.0
    #declare tag FindFlag11.1
    #declare tag FindFlag12.0
    #declare tag FindFlag12.1
    #declare tag FindFlag13.0
    #declare tag FindFlag13.1
    #declare tag FindFlag14.0
    #declare tag FindFlag14.1
    #declare tag FindFlag15.0
    #declare tag FindFlag15.1
