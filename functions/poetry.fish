function poetry --wraps="poetry"
    set -l command $argv[1..3]

    switch "$command"
        case 'env use *'
            set -l python_path (asdf where python $argv[3])/bin/python
            if test $status -eq 0
                command poetry $command[..2] $python_path $argv[4..]
                return 0
            end
    end
    command poetry $argv
end
