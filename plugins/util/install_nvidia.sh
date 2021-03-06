# Name: Install nVidia video driver
# Command: install_nvidia

install_nvidia() {
show_func "Installing nVidia video driver"
nvidia=( "0040" "0041" "0042" "0043" "0044" "0045" "0046" "0047" "0048" "004e" "0090" "0091" "0092" "0093" "0095" "0098" "0099" "009d" "00c0" "00c1" "00c2" "00c3" "00c8" "00c9" "00cc" "00cd" "00ce" "00f1" "00f2" "00f3" "00f4" "00f5" "00f6" "00f8" "00f9" "0140" "0141" "0142" "0143" "0144" "0145" "0146" "0147" "0148" "0149" "014a" "014c" "014d" "014e" "014f" "0160" "0161" "0162" "0163" "0164" "0165" "0166" "0167" "0168" "0169" "016a" "0191" "0193" "0194" "0197" "019d" "019e" "01d0" "01d1" "01d2" "01d3" "01d6" "01d7" "01d8" "01da" "01db" "01dc" "01dd" "01de" "01df" "0221" "0222" "0240" "0241" "0242" "0244" "0245" "0247" "0290" "0291" "0292" "0293" "0294" "0295" "0297" "0298" "0299" "029a" "029b" "029c" "029d" "029e" "029f" "02e0" "02e1" "02e2" "02e3" "02e4" "038b" "0390" "0391" "0392" "0393" "0394" "0395" "0397" "0398" "0399" "039c" "039e" "03d0" "03d1" "03d2" "03d5" "03d6" "0400" "0401" "0402" "0403" "0404" "0405" "0406" "0407" "0408" "0409" "040a" "040b" "040c" "040d" "040e" "040f" "0410" "0420" "0421" "0422" "0423" "0424" "0425" "0426" "0427" "0428" "0429" "042a" "042b" "042c" "042d" "042e" "042f" "0531" "0533" "053a" "053b" "053e" "0595" "05e0" "05e1" "05e2" "05e3" "05e6" "05e7" "05ea" "05eb" "05ed" "05f8" "05f9" "05fd" "05fe" "05ff" "0600" "0601" "0602" "0603" "0604" "0605" "0606" "0607" "0608" "0609" "060a" "060b" "060c" "060d" "060f" "0610" "0611" "0612" "0613" "0614" "0615" "0617" "0618" "0619" "061a" "061b" "061c" "061d" "061e" "061f" "0622" "0623" "0625" "0626" "0627" "0628" "062a" "062b" "062c" "062d" "062e" "0631" "0632" "0635" "0637" "0638" "063a" "0640" "0641" "0643" "0644" "0645" "0646" "0647" "0648" "0649" "064a" "064b" "064c" "0651" "0652" "0653" "0654" "0656" "0658" "0659" "065a" "065b" "065c" "068f" "0697" "06c0" "06c4" "06ca" "06cd" "06d1" "06d2" "06d8" "06d9" "06da" "06dc" "06dd" "06de" "06df" "06e0" "06e1" "06e2" "06e3" "06e4" "06e5" "06e6" "06e7" "06e8" "06e9" "06ea" "06eb" "06ec" "06ef" "06f1" "06f8" "06f9" "06fa" "06fb" "06fd" "06ff" "0743" "0772" "07e0" "07e1" "07e2" "07e3" "07e5" "082f" "0844" "0845" "0846" "0847" "0848" "0849" "084a" "084b" "084c" "084d" "084f" "0860" "0861" "0862" "0863" "0864" "0865" "0866" "0867" "0868" "086a" "086c" "086d" "086e" "086f" "0870" "0871" "0872" "0873" "0874" "0876" "087a" "087d" "087e" "087f" "08a5" "0914" "0930" "0974" "0a20" "0a22" "0a23" "0a26" "0a27" "0a28" "0a29" "0a2a" "0a2b" "0a2c" "0a2d" "0a34" "0a35" "0a38" "0a3c" "0a60" "0a62" "0a63" "0a64" "0a65" "0a66" "0a67" "0a68" "0a69" "0a6a" "0a6c" "0a6e" "0a6f" "0a70" "0a71" "0a72" "0a73" "0a74" "0a75" "0a78" "0a7a" "0a7c" "0ca0" "0ca2" "0ca3" "0ca4" "0ca7" "0ca8" "0ca9" "0cac" "0caf" "0cb0" "0cb1" "0cbc" "0dc0" "0dc4" "0dcd" "0dce" "0dd1" "0dd2" "0dd6" "0dd8" "0dda" "0de0" "0de1" "0de2" "0de5" "0de9" "0dea" "0deb" "0dec" "0dee" "0df0" "0df1" "0df2" "0df3" "0df4" "0df5" "0df6" "0df7" "0df8" "0df9" "0dfa" "0dfc" "0e22" "0e23" "0e24" "0e30" "0e31" "0e3a" "0e3b" "0f00" "0f01" "0fc0" "0fc1" "0fc2" "1040" "1042" "1048" "1049" "104a" "1050" "1051" "1055" "1056" "1058" "1059" "105a" "1080" "1081" "1082" "1088" "1091" "1094" "1096" "109a" "109b" "10c3" "10c5" "10cc" "10d8" "1180" "1188" "1189" "1200" "1201" "1203" "1207" "1210" "1211" "1241" "1244" "1245" "1246" "1247" "1248" "124b" "124d" "1251" "212a" "212b" "212c" )
nvidia173xx=( "00fa" "00fb" "00fc" "00fd" "00fe" "0301" "0302" "0308" "0309" "0311" "0312" "0314" "031a" "031b" "031c" "0320" "0321" "0322" "0323" "0324" "0325" "0326" "0327" "0328" "032a" "032b" "032c" "032d" "0330" "0331" "0332" "0333" "0334" "0338" "033f" "0341" "0342" "0343" "0344" "0347" "0348" "034c" "034e" )
nvidia96xx=( "0110" "0111" "0112" "0113" "0170" "0171" "0172" "0173" "0174" "0175" "0176" "0177" "0178" "0179" "017A" "017C" "017D" "0181" "0182" "0183" "0185" "0188" "018A" "018B" "018C" "01A0" "01F0" "0200" "0201" "0202" "0203" "0250" "0251" "0253" "0258" "0259" "025B" "0280" "0281" "0282" "0286" "0288" "0289" "028C" )
if [[ "$(install_nvidia_test)" = "Installed" && ! "$reinstall" = "yes" ]]; then
	show_status "nVidia video driver seems to be already installed"
else
	add_repo "rpmfusion-free.repo" "rpmfusion-nonfree.repo"
	show_msg "Updating required packages"
	yum -y update kernel kernel-PAE selinux-policy
	for id in ${nvidia[@]}; do
		if [[ `lspci -d 10de:$id` ]]; then
			show_msg "Installing driver for GeForce and Quadro GPUs"
			install_pkg akmod-nvidia xorg-x11-drv-nvidia-libs.i686 && setsebool -P allow_execstack on && sed -i '/root=/s|$| rdblacklist=nouveau|' /boot/grub/grub.conf
			if [[ `lspci | grep VGA | grep Intel` ]]; then
				show_msg "Optimus Graphics detected, installing Bumblebee"
				add_repo "bumblebee.repo"
				install_pkg bumblebee-nvidia
			fi
			nvidiasupported="yes"
			break
		fi
	done
	for id in ${nvidia173xx[@]}; do
		if [[ `lspci -d 10de:$id` ]]; then
			show_msg "Installing 173.14.xx driver for Legacy GPUs"
			install_pkg akmod-nvidia-173xx xorg-x11-drv-nvidia-173xx-libs.i686 && setsebool -P allow_execstack on && sed -i '/root=/s|$| rdblacklist=nouveau|' /boot/grub/grub.conf
			nvidiasupported="yes"
			break
		fi
	done
	for id in ${nvidia96xx[@]}; do
		if [[ `lspci -d 10de:$id` ]]; then
			show_msg "Installing 96.43.xx driver for Legacy GPUs"
			install_pkg akmod-nvidia-96xx xorg-x11-drv-nvidia-96xx-libs.i686 && setsebool -P allow_execstack on && sed -i '/root=/s|$| rdblacklist=nouveau|' /boot/grub/grub.conf
			nvidiasupported="yes"
			break
		fi
	done
	if [[ ! "$nvidiasupported" = "yes" ]]; then
		show_err "Your video card is not supported!"
	fi
fi
[[ "$(install_nvidia_test)" = "Installed" ]]; exit_state
}

install_nvidia_test() {
ls /usr/lib*/modules/*/extra/nvidia/nvidia.ko > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
	printf "Installed"
else
	printf "Not installed"
fi
}

install_nvidia_hide() {
if [[ ! `lspci -nn | grep VGA | grep -i nvidia` ]]; then
	printf "true"
fi
}
