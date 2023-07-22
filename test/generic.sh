#!/usr/bin/env zsh
source ./src/logger/logs.sh

log "This is a regular log"
log_error "This is an error!"
log_warning "Uh oh... warning!"
log_success "Based success."
