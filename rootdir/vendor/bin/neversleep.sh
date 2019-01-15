#!/vendor/bin/sh
# HACK: Little helper script to set default neversleep option

_neversleep=$(getprop persist.vendor.neversleep)
if [ $_neversleep = "true" ]; then
    setprop persist.vendor.neversleep.trigger true
    log -t "neversleep" -p w "HACK: Deep Sleep disabled"
elif [ $_neversleep = "false" ]; then
    setprop persist.vendor.neversleep.trigger false
    log -t "neversleep" -p w "Deep Sleep enabled"
else
    # If no default value is set, set it now
    setprop persist.vendor.neversleep true
    log -t "neversleep" -p w "HACK: persist.vendor.neversleep set to 'true'"
    setprop persist.vendor.neversleep.trigger true
    log -t "neversleep" -p w "HACK: Deep Sleep disabled"
fi
