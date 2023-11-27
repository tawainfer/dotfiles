.PHONY: minimal
minimal:
	echo 'minimal' > /tmp/dotfiles_choice
	$(MAKE) common
	./scripts/finally.sh

.PHONY: normal
normal:
	echo 'normal' > /tmp/dotfiles_choice
	$(MAKE) common
	./scripts/finally.sh

.PHONY: full
full:
	echo 'full' > /tmp/dotfiles_choice
	$(MAKE) common
	./scripts/rustup.sh
	./scripts/finally.sh

.PHONY: common
common:
	./scripts/init.sh
	./scripts/package.sh
	./scripts/link.sh
	./scripts/desktop.sh
	./scripts/keyconfig.sh
	./scripts/lightdm.sh
	./scripts/plemoljp.sh
	./scripts/host_rgb.sh
