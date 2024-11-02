function venv_prompt --description 'Write out virtual environment project name'
    if test $VIRTUAL_ENV
	echo -n -s (set_color cyan) '(' (path basename (path dirname $VIRTUAL_ENV)) ')' (set_color normal) ' '
    end
end
