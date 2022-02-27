set poetry_env_subcommand "info list remove use"
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "info" -d "Displays information about the current environment."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "list" -d "Lists all virtualenvs associated with the current project."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "remove" -d "Removes a specific virtualenv associated with the project."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "use" -d "Activates or creates a new virtualenv for the current project."

set python_versions (asdf list python)
complete -f -c poetry -n "__fish_seen_subcommand_from env; and __fish_seen_subcommand_from use" -a "$python_versions"
