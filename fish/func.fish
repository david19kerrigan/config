function r
    set tmp (mktemp)
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path=$tmp $argv
    if test -f "$tmp"
        set dir (cat $tmp)
        rm -f $tmp
        if test -d "$dir"
            if test "$dir" != (pwd)
                cd $dir
            end
        end
    end
end

function run_python
    if test (count $argv) -eq 0
        echo "Usage: run_python <filename>"
        return 1
    end

    set filename $argv[1]
    set command "python3 $filename 2>&1 | pygmentize -l pytb"

    eval $command
end
