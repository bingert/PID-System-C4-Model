group "pid_service" {
    

    pid_service = softwareSystem "PID-Service" "Service for PID management and resolution." {
        webapp = container "Web Application" {
            namespace = component "Namensraum Verwaltung" 
            account = component "Nutzer Verwaltung" 
            status = component "Statusanzeige" 
            pidcreate = component "PID Erzeugung Self-Service"
            version =  component "PID Versionierung"
        }

        database = container "Database" 

        api = container "Backend" {
            rest = component "REST mit OpenAPI Spec"
            pidapi = component "PID specifc API"
            role = component "Rollen/Rechte Management"
        }
        
        AAI = container "Authentication Server"
        resolver = container "PID Resolver" 
        manager = container "PID Create/Update/Tombstoning" {
            uuid = component "UUID for PID string generator" 
            ulid = component "ULID for PID string generator" 
        }
        
        monitor = container "service quality - monitoring - assurance"

        api -> resolver "resolve" 
        api -> manager "create/update"
        api -> AAI "uses"
        webapp -> api.rest "use"
        resolver -> database "lookup"
        manager -> database "create/update"
        monitor -> database "uses"
        webapp -> monitor "integrates"
    }
    user -> pid_service.webapp "uses"
    user2 -> pid_service.api.pidapi "uses"

}