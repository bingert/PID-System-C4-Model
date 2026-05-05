model {
    properties {
        "structurizr.groupSeparator" ":"
    }

    # each group should have it's own file defining the entities (e.g. softwareSystems, containers) and
    # relations between entities of the same group.

    #!include nanopub.dsl
    #!include handle.dsl
    #!include operations.dsl
    #!include repositories.dsl
    #!include manager.dsl
    #!include adapters.dsl
    #!include ap2/ap2.dsl
    
    !include users.dsl
    !include pid_service.dsl

    # the relations file contains the inter-group relations
    #!include relations.dsl
    #!include ap2/relations.dsl

    # special file for deployment
    #!include "deployment.dsl"

}
