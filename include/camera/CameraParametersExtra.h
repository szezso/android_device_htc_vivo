/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CAMERA_PARAMETERS_EXTRA_C \
const char CameraParameters::CAF_OFF[] = "caf-off"; \
const char CameraParameters::CAF_ON[] = "caf-on"; \
const char CameraParameters::CAPTURE_MODE_NORMAL[] = "normal"; \
const char CameraParameters::CAPTURE_MODE_BURST[] = "burst"; \
const char CameraParameters::CAPTURE_MODE_CONTI_BURST[] = "contiburst"; \
const char CameraParameters::CAPTURE_MODE_HDR[] = "hdr"; \
const char CameraParameters::CAPTURE_MODE_HJR[] = "hjr"; \
const char CameraParameters::CAPTURE_MODE_PANORAMA[] = "panorama"; \
const char CameraParameters::CONTINUOUS_AF_OFF[] = "caf-off"; \
const char CameraParameters::CONTINUOUS_AF_ON[] = "caf-on"; \
const char CameraParameters::KEY_CONTINUOUS_AF[] = "continuous-af"; \
const char CameraParameters::KEY_CAF[] = "continuous-af"; \
const char CameraParameters::KEY_CAPTURE_MODE[] = "capture-mode"; \
const char CameraParameters::KEY_PICTURE_COUNT[] = "picture-count"; \
const char CameraParameters::KEY_MAX_BURST_PICTURE_COUNT[] = "max-burst-picture-count"; \
const char CameraParameters::KEY_SUPPORTED_CONTINUOUS_AF[] = "continuous-af-mode"; \
const char CameraParameters::KEY_SUPPORTED_CAF[] = "continuous-af-values"; \
const char CameraParameters::KEY_SUPPORTED_CAPTURE_MODES[] = "capture-mode-values"; \
const char CameraParameters::KEY_TAKING_PICTURE_ZOOM[] = "taking-picture-zoom"; \
const char CameraParameters::KEY_PANORAMA_MODE[] = "panorama-mode"; \
const char CameraParameters::PANORAMA_MODE_NOT_INPROGRESS[] = "not-in-progress"; \
const char CameraParameters::PANORAMA_MODE_INPROGRESS[] = "in-progress"; \
const char CameraParameters::KEY_SUPPORTED_3D_FILE_FORMAT[] = "3d-file-format"; \
const char CameraParameters::FOCUS_MODE_CONTINUOUS_CAMERA[] = "continuous-camera"; \
const char CameraParameters::KEY_MIN_SHARPNESS[] = "sharpness-min"; \
const char CameraParameters::KEY_MIN_CONTRAST[] = "contrast-min"; \
const char CameraParameters::KEY_MIN_SATURATION[] = "saturation-min"; \
const char CameraParameters::FILE_FORMAT_MPO[] = "mpo"; \
const char CameraParameters::FILE_FORMAT_JPS[] = "jps"; \
const char CameraParameters::FACE_DETECTION_OFF[] = "off"; \
const char CameraParameters::FACE_DETECTION_ON[] = "on"; \
const char CameraParameters::FOCUS_MODE_NORMAL[] = "normal"; \
const char CameraParameters::ISO_100[] = "ISO100"; \
const char CameraParameters::ISO_200[] = "ISO200"; \
const char CameraParameters::ISO_400[] = "ISO400"; \
const char CameraParameters::ISO_800[] = "ISO800"; \
const char CameraParameters::ISO_AUTO[] = "auto"; \
const char CameraParameters::KEY_CONTRAST[] = "contrast"; \
const char CameraParameters::KEY_EXIF_DATETIME[] = "exif-datetime"; \
const char CameraParameters::KEY_FACE_DETECTION[] = "face-detection"; \
const char CameraParameters::KEY_GPS_ALTITUDE_REF[] = "gps-altitude-ref"; \
const char CameraParameters::KEY_GPS_LATITUDE_REF[] = "gps-latitude-ref"; \
const char CameraParameters::KEY_GPS_LONGITUDE_REF[] = "gps-longitude-ref"; \
const char CameraParameters::KEY_ISO_MODE[] = "iso"; \
const char CameraParameters::KEY_SATURATION[] = "saturation"; \
const char CameraParameters::KEY_SCENE_DETECT[] = "scene-detect"; \
const char CameraParameters::KEY_SHARPNESS[] = "sharpness"; \
const char CameraParameters::KEY_SUPPORTED_ISO_MODES[] = "iso-values"; \
const char CameraParameters::KEY_SUPPORTED_SCENE_DETECT[] = "scene-detect-values"; \
const char CameraParameters::SCENE_DETECT_OFF[] = "off"; \
const char CameraParameters::SCENE_DETECT_ON[] = "on"; \
const char CameraParameters::SCENE_MODE_BACKLIGHT[] = "backlight"; \
const char CameraParameters::SCENE_MODE_FLOWERS[] = "flowers"; \
void CameraParameters::setPostviewSize(int width, int height) {} \
void CameraParameters::setPreviewFpsRange(int minFPS, int maxFPS) \
{ \
    char str[32]; \
    snprintf(str, sizeof(str), "%d,%d",minFPS,maxFPS); \
    set(KEY_PREVIEW_FPS_RANGE,str); \
}

#define CAMERA_PARAMETERS_EXTRA_H \
       static const char KEY_CAPTURE_MODE[]; \
       static const char KEY_SUPPORTED_CAPTURE_MODES[]; \
       static const char KEY_PICTURE_COUNT[]; \
       static const char KEY_MAX_BURST_PICTURE_COUNT[]; \
       static const char KEY_SUPPORTED_CONTINUOUS_AF[]; \
       static const char KEY_SUPPORTED_CAF[]; \
       static const char CAPTURE_MODE_NORMAL[]; \
       static const char CAPTURE_MODE_BURST[]; \
       static const char CAPTURE_MODE_CONTI_BURST[]; \
       static const char CAPTURE_MODE_HDR[]; \
       static const char CAPTURE_MODE_HJR[]; \
       static const char CAPTURE_MODE_PANORAMA[]; \
       static const char FOCUS_MODE_CONTINUOUS_CAMERA[]; \
       static const char CAF_OFF[]; \
       static const char CAF_ON[]; \
       static const char CONTINUOUS_AF_OFF[]; \
       static const char CONTINUOUS_AF_ON[]; \
       static const char KEY_CONTINUOUS_AF[]; \
       static const char KEY_CAF[]; \
       static const char KEY_TAKING_PICTURE_ZOOM[]; \
       static const char KEY_PANORAMA_MODE[]; \
       static const char PANORAMA_MODE_NOT_INPROGRESS[]; \
       static const char PANORAMA_MODE_INPROGRESS[]; \
       static const char KEY_SUPPORTED_3D_FILE_FORMAT[]; \
       static const char KEY_MIN_SHARPNESS[]; \
       static const char KEY_MIN_CONTRAST[]; \
       static const char KEY_MIN_SATURATION[]; \
       static const char FILE_FORMAT_MPO[]; \
       static const char FILE_FORMAT_JPS[]; \
       static const char FACE_DETECTION_OFF[]; \
       static const char FACE_DETECTION_ON[]; \
       static const char FOCUS_MODE_NORMAL[]; \
       static const char ISO_100[]; \
       static const char ISO_200[]; \
       static const char ISO_400[]; \
       static const char ISO_800[]; \
       static const char ISO_AUTO[]; \
       static const char KEY_CONTRAST[]; \
       static const char KEY_EXIF_DATETIME[]; \
       static const char KEY_FACE_DETECTION[]; \
       static const char KEY_GPS_ALTITUDE_REF[]; \
       static const char KEY_GPS_LATITUDE_REF[]; \
       static const char KEY_GPS_LONGITUDE_REF[]; \
       static const char KEY_ISO_MODE[]; \
       static const char KEY_SATURATION[]; \
       static const char KEY_SCENE_DETECT[]; \
       static const char KEY_SHARPNESS[]; \
       static const char KEY_SUPPORTED_ISO_MODES[]; \
       static const char KEY_SUPPORTED_SCENE_DETECT[]; \
       static const char SCENE_DETECT_OFF[]; \
       static const char SCENE_DETECT_ON[]; \
       static const char SCENE_MODE_BACKLIGHT[]; \
       static const char SCENE_MODE_FLOWERS[]; \
       void setPostviewSize(int x, int y); \
       void setPreviewFpsRange(int minFPS,int maxFPS);
