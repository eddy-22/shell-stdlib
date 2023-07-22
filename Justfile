set shell := ["zsh", "-cu"]

TEST_DIR := join(justfile_directory(), 'test')

# Show help
default:
    @just --list

# Run a test under ./test/*.sh
test test_name='generic':
    #!/usr/bin/env zsh
    if [[ -e {{TEST_DIR}}/{{test_name}}.sh ]]; then
        echo -e "Running test '''./test/{{test_name}}.sh'''\n"
    else
        echo -e "Test '''{{test_name}}''' not found.\n"
        exit 1
    fi
    {{TEST_DIR}}/{{test_name}}.sh
