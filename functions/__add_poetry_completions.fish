function __add_poetry_completions --description "Adds "poetry" sub-commands completions based on autodetection with regex from poetry help <command>"
    set sub_commands (string trim (string unescape -- (string match -r '\'\s{2}\w*\''  (string escape -- (poetry env --help)))))

    set descs (string trim (string unescape -- (string match -r '\'\s{4}[\w\s]*\.\''  (string escape -- (poetry env --help)))))


    for i in (seq (count $sub_commands))
        complete -f -c poetry -n "__fish_seen_subcommand_from env; and not __fish_seen_subcommand_from $sub_commands" -a "$sub_commands[$i]" -d $descs[$i]
    end
end