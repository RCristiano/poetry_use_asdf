function poetry --wraps="poetry"
    set command $argv[1..2]
    set python_versions (asdf list python)

    switch "$command"
        case 'env use'
            set python_path (asdf where python $argv[3])/bin/python
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
