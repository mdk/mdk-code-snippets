require 'logger'

log = Logger.new(STDOUT)
log.level = Logger::INFO

log.debug "Debug message not logged..."
log.info "Logging started..."
log.warn "This is a warning message!"
log.error "This is error message!"
log.fatal "This is critical message!"

