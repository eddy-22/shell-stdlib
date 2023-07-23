set shell := ["zsh", "-cu"]

TEST_DIR := join(justfile_directory(), 'test')
TEST := 'generic'

# Show help
default:
    @just --list

# Run a test under ./test/*.sh
test test_name=TEST:
    #!/usr/bin/env zsh
    if [[ -e {{TEST_DIR}}/{{test_name}}.sh ]]; then
        echo -e "Running test '''./test/{{test_name}}.sh'''\n"
    else
        echo -e "Test '''{{test_name}}''' not found.\n"
        exit 1
    fi
    {{TEST_DIR}}/{{test_name}}.sh

# Push to origin
gitp +commit_msg:
    git add {{justfile_directory()}}
    git commit -m "{{commit_msg}}"
    git push -u origin main
