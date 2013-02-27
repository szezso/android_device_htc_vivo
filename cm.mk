$(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=IMM76Q BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.0.4/IMM76Q/87995:user/release-keys PRIVATE_BUILD_DESC="4.0.4 SzeZso CM9 release-keys"

PRODUCT_NAME := cm_vivo
PRODUCT_DEVICE := vivo
