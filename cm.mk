$(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=LMY48B BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:5.1.1/LMY48B/87995:user/release-keys PRIVATE_BUILD_DESC="5.1.1 SzeZso VivoPop release-keys"

PRODUCT_NAME := cm_vivo
PRODUCT_DEVICE := vivo
