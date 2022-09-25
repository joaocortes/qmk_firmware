keymap= keyboards/ergodox_ez/keymaps/master/keymap.c
all: json hex
json: $(keymap)
	qmk c2json -kb ergodox_ez -km master --no-cp -o keyboard_layout.json $(keymap)
hex: $(keymap)
	qmk compile -kb ergodox_ez -km master
