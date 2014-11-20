$(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=KTU84Q BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.4.4/KTU84Q/87995:user/release-keys PRIVATE_BUILD_DESC="4.4.4 SzeZso VivoKat release-keys"

PRODUCT_NAME := cm_vivo
PRODUCT_DEVICE := vivo
