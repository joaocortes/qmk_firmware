keymap= keyboards/ergodox_ez/keymaps/master/keymap.c

json: $(keymap)
	qmk c2json -kb ergodox_ez -km master --no-cp -o keyboard_layout.json $(keymap)
hex: $(keymap)
	qmk c2json -kb ergodox_ez -km master
