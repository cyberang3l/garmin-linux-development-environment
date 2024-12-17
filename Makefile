.PHONY: install

USER_BIN=${HOME}/.local/bin
USER_EXTRA_GARMIN_DIR=${HOME}/.local/opt/Garmin

install:
	mkdir -p "${USER_BIN}"
	mkdir -p "${USER_EXTRA_GARMIN_DIR}"
	cp garmin-env "${USER_EXTRA_GARMIN_DIR}/garmin-env"
	cp sdkmanager "${USER_BIN}/sdkmanager"
	cp code-garmin "${USER_BIN}/code-garmin"

uninstall:
	rm -rf "${USER_EXTRA_GARMIN_DIR}"
	rm -f "${USER_BIN}/sdkmanager"
	rm -f "${USER_BIN}/code-garmin"
