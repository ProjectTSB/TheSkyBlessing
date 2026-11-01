#> asset_manager:artifact/create/set_this.m
# @input args Namespace : string
# @within function asset_manager:artifact/create/set_definition

    $data modify storage asset:artifact ThisByNamespace."$(Namespace)" set from storage asset:artifact DefinitionThis
