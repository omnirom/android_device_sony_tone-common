#
# This is for TWRP Recovery
#

TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# Copying files
PRODUCT_COPY_FILES += \
    device/sony/tone-common/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

