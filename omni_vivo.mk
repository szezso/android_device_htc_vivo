$(call inherit-product, device/htc/vivo/device.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=JLS36G BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.3/JLS36G/87995:user/release-keys PRIVATE_BUILD_DESC="4.3 SzeZso OmniVivo 4.3 release-keys"

PRODUCT_NAME := omni_vivo
PRODUCT_DEVICE := vivo
PRODUCT_BRAND := hTC
PRODUCT_MODEL := Incredible S S710e
