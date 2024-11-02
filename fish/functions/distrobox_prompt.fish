function distrobox_prompt --description 'Write out container name'
    if test $CONTAINER_ID
	echo -n -s (set_color yellow) '(' $CONTAINER_ID ')' (set_color normal) ' '
    end
end
