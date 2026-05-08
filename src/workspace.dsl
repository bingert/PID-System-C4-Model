workspace "PID System Architecture" "Architecture Overview on a PID service" {
    !identifiers hierarchical
    // is used to allow us to refer to those containers via their fully qualified identifier.

    //!adrs "decisions"
    !docs "architecture.md"
    !docs "docs"

    configuration {
        //scope landscape
    }

    !include model/model.dsl

    views {
        properties {
            "c4plantuml.tags" true
            "generatr.site.nestGroups" true
            "generatr.site.externalTag" "Extern"
        }
        systemLandscape sl "System Landscape" {
            include *
            # autolayout lr
        }

        !include model/runtime.dsl
        !include views/views.dsl

        //deployment * testbed testbed_deployment {
        //    include *
        //    autolayout lr
        //}

        styles {
            element "Element" {
                color white
                background #1168BD
            }
            element "Person" {
                background #073B6F
                shape person
            }
            element "Extern" {
                background #7A9DBF
            }
        }
        properties {
            "generatr.markdown.flexmark.extensions" "TableOfContents,Tables,Admonition,Footnotes"
        }
    }
}
