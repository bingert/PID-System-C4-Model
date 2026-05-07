group "pid_service" {
    

    pid_service = softwareSystem "PID-Service" "Service for PID management and resolution." {
        webapp = container "Web Application" {
            namespace = component "Namensraum Verwaltung" {}
            account = component "Nutzer Verwaltung" {}
            status = component "Statusanzeige" {}
        }
        database = container "Database" {}

        api = container "Backend" {}
        
        AAI = container "Authentication Server"
        resolver = container "PID Resolver" 
        manager = container "PID Create/Update" {
            uuid = component "UUID for PID string generator" {}
        }
        monitor = container "service quality - monitoring - assurance"

        api -> resolver "resolve" 
        api -> manager "create/update"
        api -> AAI "uses"
        webapp -> api "use"
        resolver -> database "lookup"
        manager -> database "create/update"
        monitor -> database "uses"
        webapp -> monitor "integrates"
    }
    user -> pid_service.webapp "Uses"
    user2 -> pid_service.api "uses"

}