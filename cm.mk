$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltevzw \
  TARGET_DEVICE=jfltevzw \
  BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.3/JSS15J/I545VRUEMJ7:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltevzw-user 4.3 JSS15J I545VRUEMJ7 release-keys"

PRODUCT_NAME := cm_jfltevzw
PRODUCT_DEVICE := jfltevzw

