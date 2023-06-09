all: setup-brew install-dev-tools dmgs copy-customizations setup-macos-options

dotfiles: setup-brew copy-customizations setup-dotfiles

setup-dotfiles:
	@brew install rcm
	@env RCRC=${HOME}/dotfiles/rcrc rcup -v

setup-brew:
	@${PWD}/customizations/scripts/setup-brew.sh

install-dev-tools:
	@${PWD}/customizations/scripts/install-dev-tools.sh
	@${PWD}/customizations/scripts/install-nvm.sh
	@${PWD}/customizations/scripts/install-python.sh
	@${PWD}/customizations/scripts/install-ruby.sh
	@${PWD}/customizations/scripts/install-sdkman.sh

copy-customizations:
	@${PWD}/customizations/scripts/copy-customizations.sh

dmgs:
	@${PWD}/customizations/scripts/install-dmgs.sh

setup-macos-options:
	@${PWD}/customizations/scripts/set-macos-options.sh
