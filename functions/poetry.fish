function poetry --wraps="poetry"
    set command $argv[1..2]

    switch "$command"
        case 'env use'
            set python_versions (asdf list python)
            set python_path (asdf which python $argv[3])
            if test $status -eq 0
                command poetry $command $python_path $argv[4..]
            else
                echo 'Python' $argv[3] 'version not found.'
                echo 'List of installed python versions:' $python_versions
                return 1
            end
        case '*'
            command poetry $argv
    end
end
