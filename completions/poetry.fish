function __pua_seen_subcmds
    set -l cmd (commandline -poc)
    set -e cmd[1]
    if contains -- "$cmd" "$argv"
        return 0
    end
    return 1
end

function __pua_has_envs
    set -l envs (poetry env list)
    if test $status -eq 0
        return 0
    end
    return 1
end

# env

set -l poetry_env_subcommand "info list remove use"
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "info" -d "Displays information about the current environment."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "list" -d "Lists all virtualenvs associated with the current project."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "remove" -d "Removes a specific virtualenv associated with the project."
complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $poetry_env_subcommand" -a "use" -d "Activates or creates a new virtualenv for the current project."

# env use

set -l python_versions (string trim (asdf list python))
complete -f -c poetry -n "__pua_seen_subcmds env use" -a "$python_versions"

# env remove

complete -f -c poetry -n "__pua_seen_subcmds env remove; and __pua_has_envs" -a "(string replace ' (Activated)' '' (poetry env list))"