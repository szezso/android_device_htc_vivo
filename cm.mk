$(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=JLS36G BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.3/JLS36G/87995:user/release-keys PRIVATE_BUILD_DESC="4.3 SzeZso CyanVivo 10.2 release-keys"

PRODUCT_NAME := cm_vivo
PRODUCT_DEVICE := vivo
