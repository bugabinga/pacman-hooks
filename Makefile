PREFIX=/usr
HOOK_DEST=/etc/pacman.d/hooks/
ALPM_DEST=/usr/share/libalpm/scripts/

build:
	cargo build --release --manifest-path ./check-broken-packages/Cargo.toml

clean:
	cargo clean --manifest-path ./check-broken-packages/Cargo.toml

# the command "check-broken-packages" is generally useful, so we put it into bin instead of ALPM_DEST
install:
	install -m 0777 ./check-broken-packages/target/release/check-broken-packages ${PREFIX}/bin
	install -m 0644 ./check-broken-packages/check-broken-packages.hook ${HOOK_DEST}
	install -m 0700 ./pacdiff/pacdiff_diffprog ${ALPM_DEST}
	install -m 0644 ./pacdiff/pacdiff.hook ${HOOK_DEST}
	install -m 0644 ./reflector/reflector.hook ${HOOK_DEST}
	install -m 0644 ./linux-reboot-reminder/linux-reboot-reminder.hook ${HOOK_DEST}
	install -m 0644 ./deleted-files/deleted-files.hook ${HOOK_DEST}
