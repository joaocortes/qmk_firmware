keymap= keyboards/ergodox_ez/keymaps/master/keymap.c
ifndef TEENSY_LOADER_CLI
TEENSY_LOADER_CLI = ./teensy_loader_cli/teensy_loader_cli
endif

all: json hex
json: $(keymap)
	qmk c2json -kb ergodox_ez -km master --no-cp -o keyboard_layout.json $(keymap)
hex: $(keymap)
	qmk compile -kb ergodox_ez -km master

flash: hex
	export TEENSY_LOADER_CLI=$(TEENSY_LOADER_CLI); qmk flash
