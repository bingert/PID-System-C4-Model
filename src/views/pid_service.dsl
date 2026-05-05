systemContext pid_service pid_service_system_context {
    include *
    autolayout lr
}

container pid_service {
    include *
    autolayout lr
}

component pid_service.webapp {
    include *
    autolayout lr
}