# Name: Update GRUB2 config
# Command: update_grub2
# Value: False

update_grub2() {
show_func "Updating GRUB2 configuration"
g=`dd bs=512 count=1 if=/dev/sda 2>/dev/null | strings | grep "GRUB"`
if [[ -n "$g" && -d /usr/share/doc/grub2* ]]; then
grub2-mkconfig -o /boot/grub2/grub.cfg
else
show_error "GRUB2 doesn't seem to be installed"
fi
exit_state
}
