function poetry --wraps="poetry"
    set -l command $argv[1..3]

    switch "$command"
        case 'env use *'
            set -l python_path (asdf where python $argv[3])/bin/python
            if test $status -eq 0
                command poetry $command $python_path $argv[4..]
            else
                echo 'Python' $argv[3] 'version not found.'
                echo 'List of installed python versions:' (asdf list python)
                return 1
            end
        case '*'
            command poetry $argv
    end
end
