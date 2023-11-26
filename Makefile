.PHONY: minimal
minimal:
	echo 'minimal' > /tmp/dotfiles_choice
	$(MAKE) common

.PHONY: normal
normal:
	echo 'normal' > /tmp/dotfiles_choice
	$(MAKE) common

.PHONY: full
full:
	echo 'full' > /tmp/dotfiles_choice
	$(MAKE) common
	./scripts/rustup.sh

.PHONY: common
common:
	./scripts/init.sh
	./scripts/package.sh
	./scripts/link.sh
	./scripts/desktop.sh
	./scripts/keyconfig.sh
	./scripts/lightdm.sh
	./scripts/plemoljp.sh
