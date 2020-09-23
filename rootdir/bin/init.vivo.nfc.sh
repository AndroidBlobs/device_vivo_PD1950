export PATH=/vendor/bin

if [ -f /sys/nfc/nfc_enable ]; then
    fp_module=`cat /sys/nfc/nfc_enable` 2> /dev/null
    setprop vendor.vivo.nfc.boot "$fp_module"
else 
	echo "there is no nfc_enable node!!"
	setprop vendor.vivo.nfc.boot 0
fi
