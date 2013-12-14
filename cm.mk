$(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=KOT49H BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.4.2/KOT49H/87995:user/release-keys PRIVATE_BUILD_DESC="4.4.2 SzeZso CyanVivo 11 release-keys"

PRODUCT_NAME := cm_vivo
PRODUCT_DEVICE := vivo
