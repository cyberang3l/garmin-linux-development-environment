.PHONY: install

USER_BIN=${HOME}/.local/bin
USER_EXTRA_GARMIN_DIR=${HOME}/.local/opt/Garmin

WEBKIT2GTK_4_0_PATH=/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0

include garmin-env

install:
	mkdir -p "${USER_BIN}"
	mkdir -p "${USER_EXTRA_GARMIN_DIR}"
	cp garmin-env "${USER_EXTRA_GARMIN_DIR}/garmin-env"
	cp sdkmanager "${USER_BIN}/sdkmanager"
	cp code-garmin "${USER_BIN}/code-garmin"

install-global-webkit2gtk-symlink: install
	@# If you ever see the following error:
	@#    ERROR **: 22:35:26.035: Unable to spawn a new child process: Failed to spawn child process ?/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0/WebKitNetworkProcess? (No such file or directory)
	@# you may want to create a symlink of webkit2gtk4.0 to the system
	@# path WEBKIT2GTK_4_0_PATH
	sudo ln -sf "$(SDK_MANAGER_PATH)$(WEBKIT2GTK_4_0_PATH)" "$(WEBKIT2GTK_4_0_PATH)"

uninstall:
	rm -rf "${USER_EXTRA_GARMIN_DIR}"
	rm -f "${USER_BIN}/sdkmanager"
	rm -f "${USER_BIN}/code-garmin"

uninstall-global-webkit2gtk-symlink: uninstall
	if [ -L "$(WEBKIT2GTK_4_0_PATH)" ]; then \
		sudo rm -f "$(WEBKIT2GTK_4_0_PATH)"; \
	fi
