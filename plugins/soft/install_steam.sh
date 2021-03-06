# Name: Install Steam
# Command: install_steam

install_steam() {
show_func "Installing Steam"
if [[ "$(install_steam_test)" = "Installed" && ! "$reinstall" = "yes" ]]; then
	show_status "Steam already installed"
else
	add_repo "steam.repo"
	install_pkg steam
fi
[[ "$(install_steam_test)" = "Installed" ]]; exit_state
}

install_steam_test() {
if [[ -f /usr/bin/steam ]]; then
	printf "Installed"
else
	printf "Not installed"
fi
}
