.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final ANTISHAKE_RSC:I = 0x2

.field public static final ATTACHMODE_CAMCORDER_EMAIL:I = 0x4

.field public static final ATTACHMODE_CAMCORDER_MMS:I = 0x3

.field public static final ATTACHMODE_CAMCORDER_NORMAL:I = 0x2

.field public static final ATTACHMODE_CAMERA_NORMAL:I = 0x1

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final AUDIOZOOM_OFF:I = 0x0

.field public static final AUDIOZOOM_ON:I = 0x1

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final AUTO_NIGHT_DETECTION_OFF:I = 0x0

.field public static final AUTO_NIGHT_DETECTION_ON:I = 0x1

.field public static final BEAUTYFACE_LIVE_OFF:I = 0x1

.field public static final BEAUTYFACE_LIVE_ON:I = 0x0

.field public static final BESTPHOTO_START:I = 0x0

.field public static final BESTPHOTO_STOP:I = 0x1

.field public static final BURST_OFF:I = 0x0

.field public static final BURST_ON:I = 0x1

.field public static final BURST_SHOT_STATE:I = 0x139

.field public static final BURST_START:I = 0x0

.field public static final BURST_STOP:I = 0x1

.field public static final CALL_STATUS_MODE:I = 0x136

.field public static final CALL_STATUS_OFF:I = 0x0

.field public static final CALL_STATUS_ON:I = 0x1

.field public static final CAMERA_ANTI_BANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final CAMERA_ANTI_BANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final CAMERA_ANTI_BANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final CAMERA_ANTI_BANDING_OFF:Ljava/lang/String; = "off"

.field public static final CAMERA_MODE_FRONT:I = 0x1

.field public static final CAMERA_MODE_REAR:I = 0x0

.field protected static final CAMERA_SETTINGS_NOTIFICATION:I = 0x0

.field public static final COVER_MODE:I = 0x137

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_ON:I = 0x1

.field protected static final CSC_KEY_AUTONIGHTDETECTION:Ljava/lang/String; = "csc_pref_camera_autonightdetection_key"

.field protected static final CSC_KEY_BURSTSHOT:Ljava/lang/String; = "csc_pref_camera_burstshot_key"

.field protected static final CSC_KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "csc_pref_camera_videoquality_key"

.field protected static final CSC_KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "csc_pref_camcorder_resolution_key"

.field protected static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field protected static final CSC_KEY_CAMERA_QUALITY:Ljava/lang/String; = "csc_pref_camera_quality_key"

.field protected static final CSC_KEY_FORCED_SHUTTERSOUND:Ljava/lang/String; = "csc_pref_camera_forced_shuttersound_key"

.field protected static final CSC_KEY_QUICK_ACCESS:Ljava/lang/String; = "csc_pref_camera_quick_access_key"

.field protected static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field public static final DATA_CHECK_OFF:Z = false

.field public static final DATA_CHECK_ON:Z = true

.field public static final DATA_CHECK_TYPE_1:I = 0x0

.field public static final DATA_CHECK_TYPE_2:I = 0x1

.field public static final DATA_CHECK_TYPE_3:I = 0x2

.field protected static final DB_TAG_CURRENT_LOCATION_CAMERA:Ljava/lang/String; = "tag_current_location_camera"

.field protected static final DEFAULT_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_BACK_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_BACK_CAMERA_FOCUS:I = 0x1

.field protected static DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = null

.field public static final DEFAULT_BEAUTY_LEVEL:I = 0x3

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field protected static final DEFAULT_CAMCORDER_AUDIOZOOM:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTO_NIGHT_DETECTION:I = 0x1

.field protected static final DEFAULT_CAMERA_DUAL_CAPTURE_MODE:I = 0x0

.field protected static DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_EFFECT:I = 0x0

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FACE_DETECTION:I = 0x0

.field protected static final DEFAULT_CAMERA_FOCUS_SELECT:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR:I = 0x0

.field protected static final DEFAULT_CAMERA_ID:I = 0x0

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_QUICK_ACCESS:I = 0x0

.field protected static final DEFAULT_CAMERA_SAVE_RICHTONE:I = 0x0

.field protected static final DEFAULT_CAMERA_SHARE_MODE:I = 0x0

.field protected static final DEFAULT_CAMERA_SHUTTERSOUND:I = 0x1

.field protected static DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_TOUCH_TO_CAPTURE:I = 0x0

.field protected static final DEFAULT_CAMERA_VOICECOMMAND:I = 0x0

.field protected static final DEFAULT_DUAL_EFFECT:I = 0x2a

.field protected static final DEFAULT_DUAL_MODE:I = 0x0

.field protected static final DEFAULT_DUAL_RECT:I = 0x0

.field protected static final DEFAULT_DUAL_TRACKING_POSITION:Ljava/lang/String; = ""

.field protected static final DEFAULT_EFFECT:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field protected static final DEFAULT_FASTMOTION_SPEED:I = 0x2

.field protected static final DEFAULT_FLASH:I = 0x0

.field protected static final DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMERA_FOCUS:I = 0x0

.field protected static DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_FRONT_SHOOTINGMODE:I = 0x7

.field protected static final DEFAULT_GOLF_DIRECTION:I = 0x0

.field public static final DEFAULT_MAX_MMS_SIZE:J = 0x49c00L

.field public static final DEFAULT_MMS_VIDEO_DURATION:I = 0xe10

.field protected static final DEFAULT_NETWORK:I = 0x0

.field protected static final DEFAULT_ON_DEVICE_HELP_SCREEN:Z = true

.field protected static final DEFAULT_PREVIEW_FILE_RECEIVED:I = 0x0

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_REVIEW:I = 0x0

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field protected static final DEFAULT_SETUP_DATA_CHECK:Z = false

.field protected static final DEFAULT_SETUP_EULA:Z = false

.field protected static final DEFAULT_SETUP_FITVIEW:I = 0x0

.field protected static final DEFAULT_SETUP_GPS:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_SELF_FLIP:I = 0x0

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_SIDE_TOUCH_MODE:I = 0x0

.field protected static final DEFAULT_SLOWMOTION_SPEED:I = 0x2

.field public static final DEFAULT_SOUNDSHOT_MODE:I = 0x1

.field protected static final DEFAULT_SPEED:I = -0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field private static final DEFAULT_VIEW_MODE:I = 0x0

.field protected static final DEFAULT_VOLUME_KEY_AS:I = 0x1

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field public static final DIALOG_DISABLE_OFF:I = 0x0

.field public static final DIALOG_DISABLE_ON:I = 0x1

.field public static final DUAL_CAPTURE_MODE_ASYNC:I = 0x1

.field public static final DUAL_CAPTURE_MODE_SYNC:I = 0x0

.field public static final DUAL_MODE_OFF:I = 0x0

.field public static final DUAL_MODE_ON:I = 0x1

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_COMIC:I = 0xa

.field public static final EFFECT_DUAL_CIRCLELENS:I = 0x32

.field public static final EFFECT_DUAL_CUBISM:I = 0x29

.field public static final EFFECT_DUAL_DOWNLOAD:I = 0x34

.field public static final EFFECT_DUAL_EXPOSURE_OVERLAY:I = 0x2f

.field public static final EFFECT_DUAL_HEART:I = 0x2e

.field public static final EFFECT_DUAL_NORMAL:I = 0x28

.field public static final EFFECT_DUAL_NUMBER:I = 0xc

.field public static final EFFECT_DUAL_OVAL_BLUR:I = 0x2c

.field public static final EFFECT_DUAL_POLAROID:I = 0x31

.field public static final EFFECT_DUAL_POSTCARD:I = 0x2a

.field public static final EFFECT_DUAL_SHINY:I = 0x2d

.field public static final EFFECT_DUAL_SIGNATURE:I = 0x2b

.field public static final EFFECT_DUAL_SPLIT_VIEW:I = 0x30

.field public static final EFFECT_DUAL_TRACKING:I = 0x33

.field public static final EFFECT_FADED_COLOURS:I = 0x8

.field public static final EFFECT_FISHEYE:I = 0x11

.field public static final EFFECT_FOR_REAL:I = 0x12

.field public static final EFFECT_GOTHIC_NOIR:I = 0xc

.field public static final EFFECT_IMPRESSIONIST:I = 0xd

.field public static final EFFECT_INSTAGRAM_NASHVILLE:I = 0x10

.field public static final EFFECT_MINIATURE:I = 0x17

.field public static final EFFECT_NEGATIVE:I = 0x3

.field public static final EFFECT_NOIR_NOTE:I = 0x14

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_NOSTALGIA:I = 0x9

.field public static final EFFECT_OLDPHOTO:I = 0x4

.field public static final EFFECT_PASTEL_SKETCH:I = 0xb

.field public static final EFFECT_POINT_BLUE:I = 0x1c

.field public static final EFFECT_POINT_GREEN:I = 0x1e

.field public static final EFFECT_POINT_RED_YELLOW:I = 0x1d

.field public static final EFFECT_POSTERIZE:I = 0x1b

.field public static final EFFECT_RAINBOW:I = 0xf

.field public static final EFFECT_RETRO:I = 0x7

.field public static final EFFECT_SANDSTONE:I = 0xe

.field public static final EFFECT_SEPIA:I = 0x1

.field public static final EFFECT_SINGLE_NATIVE_OFFSET:I = 0x190

.field public static final EFFECT_SOLARIZE:I = 0x18

.field public static final EFFECT_STUCCHEVOLE:I = 0x13

.field public static final EFFECT_SUNSHINE:I = 0x5

.field public static final EFFECT_VIGNETTE_OUTFOCUS:I = 0x16

.field public static final EFFECT_VINCENT:I = 0x15

.field public static final EFFECT_VINTAGE:I = 0x6

.field public static final EFFECT_VINTAGE_COLD:I = 0x1a

.field public static final EFFECT_VINTAGE_WARM:I = 0x19

.field public static final EFFECT_WASHED:I = 0x1f

.field public static final EULA_OFF:Z = false

.field public static final EULA_ON:Z = true

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EV_STEP:F = 0.5f

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final EXTERNAL_SHOOTING_MODE_DOWNLOAD:I = 0x33

.field public static final EXT_EFFECT_NONE:I = 0x1f40

.field public static final FACE_DETECTION_OFF:I = 0x0

.field public static final FACE_DETECTION_ON:I = 0x1

.field public static final FASTMOTION_SPEED_2X_FASTER:I = 0x0

.field public static final FASTMOTION_SPEED_4X_FASTER:I = 0x1

.field public static final FASTMOTION_SPEED_8X_FASTER:I = 0x2

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FLASHMODE_TORCH:I = 0x4

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_PICTURE:I = 0x5

.field public static final FOCUSMODE_CONTINUOUS_PICTURE_MACRO:I = 0x6

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x4

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FOCUS_SELECT_OFF:I = 0x0

.field public static final FOCUS_SELECT_ON:I = 0x1

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final FULLVIEW:I = 0x0

.field protected static final GOLF_DIRECTION_LEFT:I = 0x1

.field protected static final GOLF_DIRECTION_RIGHT:I = 0x0

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final HDR_OFF:I = 0x0

.field public static final HDR_ON:I = 0x1

.field public static final HELP_CAPTURE_MODE:I = 0xc9

.field public static final HELP_NONE:I = 0xc8

.field public static final HELP_RECORDING_MODE:I = 0xca

.field public static final HELP_SELECT_CAMERA_MODE:I = 0xcb

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_AUTO_NIGHT_DETECTION:Ljava/lang/String; = "pref_auto_night_detection_key"

.field protected static final KEY_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_back_camera_shooting_mode_order"

.field protected static final KEY_BURST_SHOT_GUIDE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_guide_text_dialog"

.field protected static final KEY_BURST_SHOT_STORAGE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_storage_text_dialog"

.field protected static final KEY_CAMCORDER_ANTISHAKE:Ljava/lang/String; = "pref_camcorder_antishake_key"

.field protected static final KEY_CAMCORDER_AUDIOZOOM:Ljava/lang/String; = "pref_camcorder_audiozoom_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RECORDINGMODE:Ljava/lang/String; = "pref_camcorder_recordingmode_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_BEAUTY_LEVEL:Ljava/lang/String; = "pref_camera_beauty_level_key"

.field protected static final KEY_CAMERA_BURST_SETTINGS:Ljava/lang/String; = "pref_camera_burst_settings_key"

.field protected static final KEY_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_camera_editable_shortcut_order"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_FACE_DETECTION:Ljava/lang/String; = "pref_camera_face_detection_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_HDR:Ljava/lang/String; = "pref_camera_hdr_key"

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_NETWORK:Ljava/lang/String; = "pref_camera_network_key"

.field protected static final KEY_CAMERA_PREVIEW_FILE_RECEIVED:Ljava/lang/String; = "pref_camera_preview_file_received_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_QUICK_ACCESS:Ljava/lang/String; = "pref_camera_quick_access_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_CAMERA_SHARE_MODE:Ljava/lang/String; = "pref_camera_share_mode_key"

.field protected static final KEY_CAMERA_SHOOTINGMODE:Ljava/lang/String; = "pref_camera_shootingmode_key"

.field protected static final KEY_CAMERA_SHUTTERSOUND:Ljava/lang/String; = "pref_camera_shuttersound_key"

.field protected static final KEY_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = "pref_camera_sidebar_item_order"

.field protected static final KEY_CAMERA_TOUCH_TO_CAPTURE:Ljava/lang/String; = "pref_camera_touch_to_capture_key"

.field protected static final KEY_CAMERA_USER_PROFILE:Ljava/lang/String; = "pref_camera_user_profile_key"

.field protected static final KEY_CAMERA_VIEWMODE:Ljava/lang/String; = "pref_camera_fullpreview_key"

.field protected static final KEY_CAMERA_VOLUME_KEY_AS:Ljava/lang/String; = "pref_camera_volume_key_as"

.field protected static final KEY_CHANGE_DUAL_EFFECT_DIALOG:Ljava/lang/String; = "pref_change_dual_effect_dialog"

.field protected static final KEY_CHANGE_STORAGE_SETTING_DIALOG:Ljava/lang/String; = "pref_change_storage_setting_dialog"

.field protected static final KEY_DUAL_CAPTURE_MODE:Ljava/lang/String; = "pref_dual_shot_mode_key"

.field protected static final KEY_DUAL_EFFECT:Ljava/lang/String; = "pref_camera_dual_effect"

.field protected static final KEY_DUAL_LEFTBOTTOM_X:Ljava/lang/String; = "pref_camera_dual_leftbottom_x"

.field protected static final KEY_DUAL_LEFTBOTTOM_Y:Ljava/lang/String; = "pref_camera_dual_leftbottom_y"

.field protected static final KEY_DUAL_LEFTTOP_X:Ljava/lang/String; = "pref_camera_dual_lefttop_x"

.field protected static final KEY_DUAL_LEFTTOP_Y:Ljava/lang/String; = "pref_camera_dual_lefttop_y"

.field protected static final KEY_DUAL_MODE:Ljava/lang/String; = "pref_camera_dual_mode"

.field protected static final KEY_DUAL_RECT_HEIGHT:Ljava/lang/String; = "pref_camera_dual_rect_height"

.field protected static final KEY_DUAL_RECT_WIDTH:Ljava/lang/String; = "pref_camera_dual_rect_width"

.field protected static final KEY_DUAL_RIGHTBOTTOM_X:Ljava/lang/String; = "pref_camera_dual_rightbottom_x"

.field protected static final KEY_DUAL_RIGHTBOTTOM_Y:Ljava/lang/String; = "pref_camera_dual_rightbottom_y"

.field protected static final KEY_DUAL_RIGHTTOP_X:Ljava/lang/String; = "pref_camera_dual_righttop_x"

.field protected static final KEY_DUAL_RIGHTTOP_Y:Ljava/lang/String; = "pref_camera_dual_righttop_y"

.field protected static final KEY_DUAL_TRACKING_GUIDE_DIALOG:Ljava/lang/String; = "pref_dual_tracking_guide_dialog"

.field protected static final KEY_DUAL_TRACKING_POSITION:Ljava/lang/String; = "pref_camera_dual_tracking_position"

.field protected static final KEY_EDITABLE_SHORTCUT_GUIDE_DIALOG:Ljava/lang/String; = "pref_editable_shortcut_guide_dialog"

.field protected static final KEY_FACE_ZOOM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_face_zoom_help_text_dialog"

.field protected static final KEY_FLASH:Ljava/lang/String; = "pref_flash_key"

.field protected static final KEY_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_front_camera_shooting_mode_order"

.field private static final KEY_GOLF_DIRECTION:Ljava/lang/String; = "pref_golf_direction"

.field protected static final KEY_LOCATION_TAG_GUIDE_DIALOG:Ljava/lang/String; = "pref_location_tag_guide_dialog"

.field protected static final KEY_OUT_FOCUS_SHOT_GUIDE_DIALOG:Ljava/lang/String; = "pref_out_focus_shot_guide_dialog"

.field protected static final KEY_PROFILE_NAME:Ljava/lang/String; = "pref_user_name"

.field protected static final KEY_QUICK_ACCESS_DIALOG:Ljava/lang/String; = "pref_quick_access_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_EFFECT_DOWNLOAD_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_effect_download_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_EFFECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_effect_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_GALLERY_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_gallery_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_HELP_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_help_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_RESET_CAMERA_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_reset_camera_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_WIFI_DIRECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_wifi_direct_guide_dialog"

.field protected static final KEY_SAVE_RICHTONE:Ljava/lang/String; = "pref_save_richtone_key"

.field protected static final KEY_SETUP_DATA_CHECK:Ljava/lang/String; = "pref_setup_datacheck_key"

.field protected static final KEY_SETUP_EULA:Ljava/lang/String; = "pref_setup_eula_key"

.field protected static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_setup_gps_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_review_key"

.field protected static final KEY_SETUP_SELF_FLIP:Ljava/lang/String; = "pref_setup_self_flip_key"

.field protected static final KEY_SETUP_SIDETOUCH:Ljava/lang/String; = "pref_camera_sidetouch_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_SETUP_VOCICE_CONTROL:Ljava/lang/String; = "pref_setup_voice_control_key"

.field protected static final KEY_SHOOTINGMODE_3DPANORAMA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_3dpanorama_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_3DTOUR_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_3dtour_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_AQUA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_aqua_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_BEAUTY_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_beauty_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_BURST_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_burst_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_CINEPIC_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_cinepic_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_DUAL_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_dual_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_FOCUSSELECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_focusselct_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_MAGIC_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_magic_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_NIGHT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_night_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_PANORAMA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_panorama_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_RICHTONE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_richtone_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SINGLE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_single_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SOUNDSHOT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_soundshot_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SPORTS_SCENE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_sports_guide_dialog"

.field protected static final KEY_SHOW_LIVE_BEAUTY_CONTROLLER:Ljava/lang/String; = "pref_show_live_beauty_controller"

.field protected static final KEY_SIDE_TOUCH_GUIDE_DIALOG:Ljava/lang/String; = "pref_side_touch_guide_dialog"

.field protected static final KEY_SNAPSHOT_LIMITATION_DIALOG:Ljava/lang/String; = "pref_snap_shot_limitation_dialog"

.field protected static final KEY_START_STABILIZATION_GUIDE_DIALOG:Ljava/lang/String; = "pref_smart_stabilization_dialog"

.field protected static final KEY_TURN_ON_BURST_SHOT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_turn_on_burst_help_text_dialog"

.field protected static final KEY_VIDEO_AUDIOZOOM_DIALOG:Ljava/lang/String; = "pref_video_audiozoom_dialog"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field protected static final KEY_VIDEO_FHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_fhd_resolution_dialog"

.field protected static final KEY_VIDEO_STABILISATION_DIALOG:Ljava/lang/String; = "pref_video_stabilisation_dialog"

.field protected static final KEY_VIDEO_UHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_uhd_resolution_dialog"

.field protected static final KEY_VIDEO_WQHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_wqhd_resolution_dialog"

.field public static final MAX_NUM_OF_ITEMS_FOR_SIDEBAR_TOGGLE:I = 0x2

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_AUTO_NIGHT_DETECTION:I = 0x57

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BEAUTYFACE_LEVEL:I = 0x6d

.field public static final MENUID_BEAUTYFACE_MODE:I = 0x51

.field public static final MENUID_BESTPHOTO_STATE:I = 0x77

.field public static final MENUID_BURST_SETTINGS:I = 0x3f

.field public static final MENUID_CAMCORDER_ANTISHAKE:I = 0xbbf

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0xbbc

.field public static final MENUID_CAMCORDER_AUDIOZOOM:I = 0xbc7

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0xbba

.field public static final MENUID_CAMCORDER_QUALITY:I = 0xbbb

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0xbb8

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0xbb9

.field public static final MENUID_CAMCORDER_SETTINGS:I = 0xbbd

.field public static final MENUID_CAMERA_ANTISHAKE:I = 0xd

.field public static final MENUID_CAMERA_HELP:I = 0x6f

.field public static final MENUID_CAMERA_MODE:I = 0x24

.field public static final MENUID_CAMERA_QUALITY:I = 0x10

.field public static final MENUID_CAMERA_RESOLUTION:I = 0x4

.field public static final MENUID_COMMON_SETTINGS:I = 0xbbe

.field public static final MENUID_DUAL_CAPTURE_MODE:I = 0x58

.field public static final MENUID_EASYMODE_FLASHMODE:I = 0x6c

.field public static final MENUID_EASYMODE_HDR:I = 0x79

.field public static final MENUID_EDITABLE_SHORTCUT:I = 0x28

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EFFECT_DUAL:I = 0x5a

.field public static final MENUID_EFFECT_MANAGE:I = 0x232e

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_EXTERNAL_DOWNLOAD:I = 0x232a

.field public static final MENUID_EXTERNAL_EFFECT:I = 0x2329

.field public static final MENUID_EXTERNAL_NOITEM:I = 0x232d

.field public static final MENUID_FACE_DETECTION:I = 0x55

.field public static final MENUID_FASTMOTION_SPEED:I = 0x170f

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_FOCUS_SELECT_MODE:I = 0x72

.field public static final MENUID_GOLF_DIM:I = 0x75

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_HDR:I = 0xc

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_NETWORK:I = 0x2b

.field public static final MENUID_OUTDOOR_VISIBILITY:I = 0x23

.field public static final MENUID_PREVIEWFILERECEIVED:I = 0x2a

.field public static final MENUID_QUICK_ACCESS:I = 0x78

.field public static final MENUID_RECORDING:I = 0x41

.field public static final MENUID_REMOTE_VIEWFINDER:I = 0x63

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_REVIEW_TIMER:I = 0x1f

.field public static final MENUID_RICHTONE:I = 0x2e

.field public static final MENUID_SAVE_RICHTONE:I = 0x22

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SELECTPICTURE:I = 0x2c

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARE_MODE:I = 0x35

.field public static final MENUID_SHARE_MODE_ON:I = 0x1710

.field public static final MENUID_SHARE_SHOT_LIST:I = 0x54

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHOOTINGMODE_EASY:I = 0x4e

.field public static final MENUID_SHOOTING_MODE_MANAGE:I = 0x232f

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_SIDETOUCH:I = 0x70

.field public static final MENUID_SIDE_BAR:I = 0x42

.field public static final MENUID_SLOWMOTION_SPEED:I = 0x170e

.field public static final MENUID_SOUNDSHOT_MODE:I = 0x4d

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_THUMBNAIL_LIST:I = 0x71

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_TOUCH_TO_CAPTURE:I = 0x62

.field public static final MENUID_USERPROFILE:I = 0x29

.field public static final MENUID_VIEWMODE:I = 0x138

.field public static final MENUID_VOICECOMMAND:I = 0x47

.field public static final MENUID_VOICE_GUIDE:I = 0x59

.field public static final MENUID_VOLUME_KEY_AS:I = 0x48

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

.field public static final MODE_CAMERA:I = 0x0

.field public static final NETWORK:I = 0x4

.field public static final NETWORK_ID:I = 0x3ea

.field public static final NORMALVIEW:I = 0x1

.field public static final NO_VALUE:I = -0xffff

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_OFF:Z = false

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_ON:Z = true

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final PHOTOGRAPHER_FACE_POSITION_BOTTOM:I = 0x34

.field public static final PHOTOGRAPHER_FACE_POSITION_CLOSE:I = 0x20

.field public static final PHOTOGRAPHER_FACE_POSITION_DETECTED:I = 0x4

.field public static final PHOTOGRAPHER_FACE_POSITION_GOOD:I = 0x2

.field public static final PHOTOGRAPHER_FACE_POSITION_LEFT:I = 0x31

.field public static final PHOTOGRAPHER_FACE_POSITION_NOT_FOUND:I = 0x3

.field public static final PHOTOGRAPHER_FACE_POSITION_RIGHT:I = 0x33

.field public static final PHOTOGRAPHER_FACE_POSITION_TOP:I = 0x32

.field public static final PHOTOGRAPHER_FACE_POSITION_UNKNOWN:I = 0x0

.field public static final PREVIEW_FILE_RECEIVED:I = 0x3

.field public static final PREVIEW_FILE_RECEIVED_OFF:I = 0x0

.field public static final PREVIEW_FILE_RECEIVED_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_FOR_FIXED_BURST:I = 0x3

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final QUICK_ACCESS_OFF:I = 0x0

.field public static final QUICK_ACCESS_ON:I = 0x1

.field public static final RECORDINGMODE_BROADCASTING:I = 0x5

.field public static final RECORDINGMODE_EMAIL:I = 0x6

.field public static final RECORDINGMODE_FASTMOTION:I = 0x3

.field public static final RECORDINGMODE_FHD_60FPS:I = 0x4

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SHARING:I = 0x1

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REMOTE_VIEWFINDER_OFF:I = 0x0

.field public static final REMOTE_VIEWFINDER_ON:I = 0x1

.field public static final REVIEW_2_SEC:I = 0x2

.field public static final REVIEW_5_SEC:I = 0x3

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final RICHTONE_AND_ORIGINAL:I = 0x1

.field public static final RICHTONE_ONLY:I = 0x0

.field public static final SCENEMODE_AQUA:I = 0xe

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SHARE_BUDDY:I = 0x2

.field public static final SHARE_OFF:I = 0x0

.field public static final SHARE_REMOTE_VIEWFINDER:I = 0x5

.field public static final SHARE_SHOT:I = 0x1

.field public static final SHOOTINGMODE_3DPANORAMA:I = 0x25

.field public static final SHOOTINGMODE_3DTOUR:I = 0x30

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_AQUA_SCENE:I = 0x2a

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_BEST_FACE:I = 0x19

.field public static final SHOOTINGMODE_BEST_PHOTO:I = 0x18

.field public static final SHOOTINGMODE_BURST:I = 0x11

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CINEPIC:I = 0x26

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_DRAMA:I = 0x1f

.field public static final SHOOTINGMODE_DUAL:I = 0x2f

.field public static final SHOOTINGMODE_ERASER:I = 0x22

.field public static final SHOOTINGMODE_EXTERNAL:I = 0x32

.field public static final SHOOTINGMODE_FACE_SHOT:I = 0x10

.field public static final SHOOTINGMODE_FOCUS_SELECT:I = 0x2d

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_GOLF:I = 0x1c

.field public static final SHOOTINGMODE_KIDS:I = 0x2b

.field public static final SHOOTINGMODE_LIGHTPIP:I = 0x2c

.field public static final SHOOTINGMODE_MAGIC:I = 0x2e

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_NIGHT:I = 0x17

.field public static final SHOOTINGMODE_NIGHT_SCENE:I = 0x27

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_RICH_TONE:I = 0xe

.field public static final SHOOTINGMODE_SECFACE_INTERFACE:I = 0x29

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_SOUNDSHOT:I = 0x23

.field public static final SHOOTINGMODE_SPORTS_SCENE:I = 0x28

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_THEME:I = 0x20

.field public static final SHORTCUT_LAYOUT_RESET_OFF:I = 0x0

.field public static final SHORTCUT_LAYOUT_RESET_ON:I = 0x1

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final SIDE_TOUCH_OFF:I = 0x0

.field public static final SIDE_TOUCH_ON:I = 0x1

.field public static final SLOWMOTION_SPEED_2X_SLOWER:I = 0x0

.field public static final SLOWMOTION_SPEED_4X_SLOWER:I = 0x1

.field public static final SLOWMOTION_SPEED_8X_SLOWER:I = 0x2

.field public static final SOUNDSHOT_MODE_ADD_VOICE:I = 0x1

.field public static final SOUNDSHOT_MODE_AUTO:I = 0x0

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final TORCH_LIGHT_MODE:I = 0x12c

.field public static final TORCH_LIGHT_OFF:I = 0x0

.field public static final TORCH_LIGHT_ON:I = 0x1

.field public static final TOUCH_TO_CAPTURE_OFF:I = 0x0

.field public static final TOUCH_TO_CAPTURE_ON:I = 0x1

.field public static final USER_PROFILE:I = 0x2

.field public static final USER_PROFILE_ID:I = 0x3e9

.field public static final VOICECOMMAND_OFF:I = 0x0

.field public static final VOICECOMMAND_ON:I = 0x1

.field public static final VOICE_GUIDE_OFF:I = 0x0

.field public static final VOICE_GUIDE_ON:I = 0x1

.field public static final VOLUME_KEY_AS_CAMERA:I = 0x1

.field public static final VOLUME_KEY_AS_RECORD:I = 0x2

.field public static final VOLUME_KEY_AS_ZOOM:I = 0x0

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5


# instance fields
.field private DEFAULT_OUTDOOR_VISIBILITY:I

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAttachCamcorderMode:Z

.field private mAttachCameraMode:Z

.field private mAttachEmailMode:Z

.field private mAttachMMSMode:Z

.field private mAutoContrast:I

.field private mAutoNightDetection:I

.field mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackCameraShootingModeOrder:Ljava/lang/String;

.field public mBackShootingMode:I

.field private mBeautyFaceMode:I

.field private mBeautyLevel:I

.field private mBurstMode:I

.field private mCallStatus:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderAudioZoom:I

.field private mCamcorderQuality:I

.field private mCamcorderResolution:I

.field private mCamcorderResolutionChanged:Z

.field private mCameraAntiShake:I

.field mCameraDefaultOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraEditableShortcutMaxSize:I

.field private mCameraEditableShortcutOrder:Ljava/lang/String;

.field private mCameraId:I

.field private mCameraMode:I

.field private mCameraResolutionChanged:Z

.field private mCameraSideBarItemOrder:Ljava/lang/String;

.field private mCameraSideBarMaxSize:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mCoverMode:Z

.field private mDataCheckEnabled:Z

.field private mDataWarningType:I

.field private mDeviceName:Ljava/lang/String;

.field private mDualCaptureMode:I

.field private mDualChanged:Z

.field private mDualEffect:I

.field private mDualLeftBottomX:I

.field private mDualLeftBottomY:I

.field private mDualLeftTopX:I

.field private mDualLeftTopY:I

.field private mDualMode:I

.field private mDualRightBottomX:I

.field private mDualRightBottomY:I

.field private mDualRightTopX:I

.field private mDualRightTopY:I

.field private mEULAEnabled:Z

.field private mEasyMode:Z

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEffect:I

.field private mEffectNotSupportedUHDPopup:I

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mFaceDetectionMode:I

.field private mFastMotionSpeed:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFocusMode:I

.field private mFocusSelectMode:I

.field private mFocusSelectModeWhenAutoMode:I

.field mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCameraShootingModeOrder:Ljava/lang/String;

.field public mFrontShootingMode:I

.field private mGPS:I

.field private mGuideLine:I

.field private mHDR:I

.field public mHelpMode:I

.field private mISO:I

.field private mIsTemperatureHighToRecord:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private mIsTemperatureLowToUseFlash:Z

.field private mLowBattery:Z

.field private mMaxMmsSize:J

.field private mMode:I

.field private mNetwork:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

.field private mPreviewFileReceived:I

.field private mPreviousSideTouchMode:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mRemoteViewfinderMode:I

.field private mRequestedRecordingSize:J

.field private mResolution:I

.field private mRestoreValueFromHelpModeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReview:I

.field private mSaveRichtone:I

.field private mSceneMode:I

.field private mSecureMode:Z

.field private mShareMode:I

.field public mShootingMode:I

.field private mShootingModeName:Ljava/lang/String;

.field private mShortcutLayoutReset:I

.field private mShutterSound:I

.field private mSideTouchMode:I

.field private mSlowMotionSpeed:I

.field private mSoundShotMode:I

.field private mStorage:I

.field private mTimer:I

.field private mTorchLight:I

.field private mTouchToCapture:I

.field private mUpdateShootingModeByDualCamera:Z

.field private mUriListInSecureMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideocallPresetSelected:Z

.field private mViewModePreview:I

.field private mVoiceCommand:I

.field private mVoiceGuide:I

.field private mVolumeKeyAs:I

.field private mWB:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 907
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    .line 908
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 919
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    .line 924
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 185
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    .line 219
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 222
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    .line 227
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    .line 230
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    .line 242
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 247
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 305
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 306
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    .line 307
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 325
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 346
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 367
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 377
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 438
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 455
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 467
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    .line 484
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 519
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    .line 532
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    .line 536
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    .line 571
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 582
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 591
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    .line 592
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 597
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 654
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    .line 658
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    .line 667
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    .line 671
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    .line 686
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    .line 693
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    .line 698
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    .line 703
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    .line 708
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    .line 713
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    .line 723
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    .line 724
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    .line 731
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    .line 734
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    .line 736
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 737
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    .line 738
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    .line 739
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 740
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    .line 742
    iput-wide v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 743
    iput-wide v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 744
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 747
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mUpdateShootingModeByDualCamera:Z

    .line 868
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    .line 869
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    .line 870
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    .line 871
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    .line 872
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    .line 873
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    .line 874
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    .line 875
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    .line 909
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    .line 910
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 913
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    .line 914
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    .line 915
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    .line 920
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 921
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 925
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 926
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 1037
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 1038
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 1040
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    .line 1043
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    .line 1044
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    .line 1045
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    .line 1046
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    .line 1062
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 6362
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 6363
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 1065
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultSideBarMenuOrder()V

    .line 1068
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4467
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getCameraHDRString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4657
    packed-switch p0, :pswitch_data_0

    .line 4663
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 4659
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 4661
    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    .line 4657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "defaultQuality"    # Ljava/lang/String;

    .prologue
    .line 6218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6219
    .local v0, "quality":I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6222
    .end local p1    # "defaultQuality":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultQuality":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getEdmService()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1074
    :cond_0
    return-void
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4557
    packed-switch p0, :pswitch_data_0

    .line 4593
    :pswitch_0
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 4559
    :pswitch_1
    const-string v0, "none"

    goto :goto_0

    .line 4561
    :pswitch_2
    const-string v0, "negative"

    goto :goto_0

    .line 4563
    :pswitch_3
    const-string v0, "mono"

    goto :goto_0

    .line 4565
    :pswitch_4
    const-string v0, "sepia"

    goto :goto_0

    .line 4567
    :pswitch_5
    const-string v0, "solarize"

    goto :goto_0

    .line 4569
    :pswitch_6
    const-string v0, "vintage"

    goto :goto_0

    .line 4571
    :pswitch_7
    const-string v0, "nostalgia"

    goto :goto_0

    .line 4573
    :pswitch_8
    const-string v0, "faded-colours"

    goto :goto_0

    .line 4575
    :pswitch_9
    const-string v0, "retro"

    goto :goto_0

    .line 4577
    :pswitch_a
    const-string v0, "sunshine"

    goto :goto_0

    .line 4579
    :pswitch_b
    const-string v0, "vintage-cold"

    goto :goto_0

    .line 4581
    :pswitch_c
    const-string v0, "vintage-warm"

    goto :goto_0

    .line 4583
    :pswitch_d
    const-string v0, "point-blue"

    goto :goto_0

    .line 4585
    :pswitch_e
    const-string v0, "point-red-yellow"

    goto :goto_0

    .line 4587
    :pswitch_f
    const-string v0, "point-green"

    goto :goto_0

    .line 4589
    :pswitch_10
    const-string v0, "washed"

    goto :goto_0

    .line 4591
    :pswitch_11
    const-string v0, "posterize"

    goto :goto_0

    .line 4557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4644
    packed-switch p0, :pswitch_data_0

    .line 4652
    const-string v0, "center"

    :goto_0
    return-object v0

    .line 4646
    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    .line 4648
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 4650
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 4644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getExternalShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4864
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 4867
    .local v0, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4512
    packed-switch p0, :pswitch_data_0

    .line 4522
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 4514
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 4516
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 4518
    :pswitch_3
    const-string v0, "off"

    goto :goto_0

    .line 4520
    :pswitch_4
    const-string v0, "torch"

    goto :goto_0

    .line 4512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4527
    packed-switch p0, :pswitch_data_0

    .line 4552
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 4530
    :pswitch_0
    const-string v0, "infinity"

    goto :goto_0

    .line 4534
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 4536
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 4541
    :pswitch_3
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 4546
    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    .line 4548
    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 4550
    :pswitch_6
    const-string v0, "continuous-picture-macro"

    goto :goto_0

    .line 4527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFrontCameraDefaultShootingMode()I
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 2414
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->settingShootingModeToCommandId(I)I

    move-result v0

    .line 2415
    .local v0, "commandId":I
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->isShootingModeAvailable(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 2129
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 2131
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 2130
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4615
    packed-switch p0, :pswitch_data_0

    .line 4639
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 4617
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 4619
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 4621
    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    .line 4623
    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    .line 4625
    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    .line 4627
    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    .line 4629
    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    .line 4631
    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    .line 4633
    :pswitch_9
    const-string v0, "sports"

    goto :goto_0

    .line 4635
    :pswitch_a
    const-string v0, "night"

    goto :goto_0

    .line 4637
    :pswitch_b
    const-string v0, "movie"

    goto :goto_0

    .line 4615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 4407
    sparse-switch p0, :sswitch_data_0

    .line 4462
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 4409
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 4412
    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    .line 4414
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 4417
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 4419
    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 4421
    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    .line 4423
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 4425
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 4427
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 4429
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 4431
    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    .line 4434
    :sswitch_b
    const-string v0, "rt-hdr"

    goto :goto_0

    .line 4436
    :sswitch_c
    const-string v0, "anti-shake"

    goto :goto_0

    .line 4438
    :sswitch_d
    const-string v0, "wdr"

    goto :goto_0

    .line 4440
    :sswitch_e
    const-string v0, "video-size"

    goto :goto_0

    .line 4442
    :sswitch_f
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 4444
    :sswitch_10
    const-string v0, "video-stabilization"

    goto :goto_0

    .line 4446
    :sswitch_11
    const-string v0, "fast-fps-mode"

    goto :goto_0

    .line 4448
    :sswitch_12
    const-string v0, "camera_id"

    goto :goto_0

    .line 4450
    :sswitch_13
    const-string v0, "shot-mode"

    goto :goto_0

    .line 4452
    :sswitch_14
    const-string v0, "focus-select-mode"

    goto :goto_0

    .line 4407
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x24 -> :sswitch_12
        0x6c -> :sswitch_1
        0x72 -> :sswitch_14
        0x79 -> :sswitch_b
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_3
        0xbbb -> :sswitch_f
        0xbbf -> :sswitch_10
        0x170e -> :sswitch_11
    .end sparse-switch
.end method

.method public static getQualityValue(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/16 v0, 0x60

    .line 4677
    packed-switch p0, :pswitch_data_0

    .line 4687
    :goto_0
    :pswitch_0
    return v0

    .line 4681
    :pswitch_1
    const/16 v0, 0x5c

    goto :goto_0

    .line 4683
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 4685
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 4677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingFastFPSMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4717
    packed-switch p0, :pswitch_data_0

    .line 4726
    const-string v0, "-1"

    :goto_0
    return-object v0

    .line 4719
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 4722
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 4724
    :pswitch_2
    const-string v0, "-1"

    goto :goto_0

    .line 4717
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4475
    packed-switch p0, :pswitch_data_0

    .line 4507
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 4477
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 4479
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 4481
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 4483
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 4485
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 4487
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 4489
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 4491
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 4493
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 4495
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 4497
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 4499
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 4501
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 4503
    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    .line 4505
    :pswitch_e
    const-string v0, "aqua_scn"

    goto :goto_0

    .line 4475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4471
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4598
    packed-switch p0, :pswitch_data_0

    .line 4610
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 4600
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 4602
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 4604
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 4606
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 4608
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 4598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeBackCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1098
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1106
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1110
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1111
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSingleEffectMenuSelect(I)V

    .line 1114
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSaveRichtoneMenuSelect(I)V

    .line 1115
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    .line 1116
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onAutoNightDetectionSelect(IZ)V

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    .line 1123
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onCameraAntishakeSelect(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1132
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onISOMenuSelect(I)V

    .line 1133
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1134
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1136
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1137
    return-void
.end method

.method private initializeFrontCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1141
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1155
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSingleEffectMenuSelect(I)V

    .line 1158
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSaveRichtoneMenuSelect(I)V

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onAutoNightDetectionSelect(IZ)V

    .line 1164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    .line 1167
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onCameraAntishakeSelect(I)V

    .line 1180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1182
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onISOMenuSelect(I)V

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1186
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1187
    return-void
.end method

.method public static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 5029
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_gps_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_storage_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_self_flip_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_shuttersound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_storage_setting_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_dual_effect_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_zoom_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_guide_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_storage_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_turn_on_burst_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_single_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_richtone_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_beauty_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_magic_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_focusselct_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_panorama_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_3dtour_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_dual_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_cinepic_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_soundshot_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_sports_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_3dpanorama_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_burst_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_aqua_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_night_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_out_focus_shot_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_stabilisation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_snap_shot_limitation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_side_touch_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_quick_access_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_editable_shortcut_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_burst_settings_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volume_key_as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_guideline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_face_detection_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_share_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_review_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_effect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_sidebar_item_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_save_richtone_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_auto_night_detection_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quick_access_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_dual_shot_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_wifi_direct_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_gallery_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_effect_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_reset_camera_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_touch_to_capture_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_lefttop_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_lefttop_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_righttop_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_righttop_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rightbottom_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rightbottom_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_leftbottom_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_leftbottom_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rect_width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rect_height"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_location_tag_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camcorder_audiozoom_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_smart_stabilization_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_sidetouch_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_voice_control_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_beauty_level_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_back_camera_shooting_mode_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_camera_shooting_mode_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_show_live_beauty_controller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_exposuremeter_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 5119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 5120
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 5122
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 5123
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKeyAs(I)V

    .line 5125
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5126
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    .line 5129
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v0, v3, :cond_1

    .line 5130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 5132
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setViewMode(I)V

    .line 5133
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 5134
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 5135
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    .line 5136
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewfinderMode(I)V

    .line 5137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 5138
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 5139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 5140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultQuickAccessMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setQuickAccessMode(I)V

    .line 5141
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    .line 5142
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5143
    const/16 v0, 0x58

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5144
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    .line 5145
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    .line 5146
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    .line 5147
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopX(I)V

    .line 5148
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopY(I)V

    .line 5149
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomX(I)V

    .line 5150
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomY(I)V

    .line 5151
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomX(I)V

    .line 5152
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomY(I)V

    .line 5153
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 5154
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    .line 5155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    .line 5156
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    .line 5157
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 5158
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setOutFocusShotGuideDialog(I)V

    .line 5159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetShootingModeGuideDialog()V

    .line 5160
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5164
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 5166
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 5167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 5168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 5174
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5175
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(IZ)V

    .line 5178
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5179
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 5181
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    .line 5182
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 5183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 5184
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    .line 5185
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraHDR(I)V

    .line 5186
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFocusSelectMode(I)V

    .line 5187
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 5188
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 5189
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-ne v0, v3, :cond_6

    .line 5190
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    .line 5194
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 5195
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 5196
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 5197
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    .line 5198
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setOutdoorVisibility(I)V

    .line 5199
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 5200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 5201
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    .line 5202
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 5203
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    .line 5204
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    .line 5208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 5211
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSlowMotionSpeed(I)V

    .line 5212
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFastMotionSpeed(I)V

    .line 5215
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstShotsGuideTextDialog(I)V

    .line 5216
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstShotsStorageTextDialog(I)V

    .line 5217
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchGalleryGuideDialog(I)V

    .line 5218
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchEffectDownloadGuideDialog(I)V

    .line 5219
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchEffectGuideDialog(I)V

    .line 5220
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchHelpGuideDialog(I)V

    .line 5221
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderResetCameraGuideDialog(I)V

    .line 5222
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderWifiDirectGuideDialog(I)V

    .line 5223
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoStabilisationDialog(I)V

    .line 5224
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoAudiozoomDialog(I)V

    .line 5225
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoUhdResolutionDialog(I)V

    .line 5226
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoWqhdResolutionDialog(I)V

    .line 5227
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceZoomHelpTextDialog(I)V

    .line 5228
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSnapshotLimitationDialog(I)V

    .line 5229
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowTurnOnBurstShotHelpTextDialog(I)V

    .line 5230
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualTrackingGuideDialog(I)V

    .line 5232
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 5234
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeDualEffectDialog(I)V

    .line 5235
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchGuideDialog(I)V

    .line 5236
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setQuickAccessDialog(I)V

    .line 5237
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowEditableShortcutGuideDialog(I)V

    .line 5238
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowLiveBeautyController(I)V

    .line 5240
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5241
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setDataCheckEnable(Ljava/lang/Boolean;)V

    .line 5243
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setEULAEnable(Ljava/lang/Boolean;)V

    .line 5244
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLocationTagGuideDialog(I)V

    .line 5245
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    .line 5247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5248
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 5252
    :cond_4
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    .line 5256
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 5257
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    .line 5258
    return-void

    .line 5170
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5171
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 5192
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_1
.end method

.method private resetCommonGlobalSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5107
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5108
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 5111
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 5112
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 5115
    return-void
.end method

.method private setCameraMode(I)V
    .locals 4
    .param p1, "cameraMode"    # I

    .prologue
    const/16 v3, 0x24

    .line 2373
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    if-eqz v0, :cond_1

    .line 2374
    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2376
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleCameraModeChanged(I)V

    .line 2378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    .line 2380
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2386
    return-void
.end method

.method private setDualMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 6532
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-eq v0, p1, :cond_0

    .line 6533
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6534
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    .line 6535
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleDualModeChanged(I)V

    .line 6536
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setNeedSurfaceDestory()V

    .line 6538
    :cond_0
    return-void
.end method

.method public static settingShootingModeToCommandId(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4957
    const/4 v0, 0x0

    .line 4959
    .local v0, "commandId":I
    packed-switch p0, :pswitch_data_0

    .line 5025
    :goto_0
    :pswitch_0
    return v0

    .line 4961
    :pswitch_1
    const/16 v0, 0x12c

    .line 4962
    goto :goto_0

    .line 4964
    :pswitch_2
    const/16 v0, 0x133

    .line 4965
    goto :goto_0

    .line 4967
    :pswitch_3
    const/16 v0, 0x12e

    .line 4968
    goto :goto_0

    .line 4970
    :pswitch_4
    const/16 v0, 0x153

    .line 4971
    goto :goto_0

    .line 4973
    :pswitch_5
    const/16 v0, 0x150

    .line 4974
    goto :goto_0

    .line 4976
    :pswitch_6
    const/16 v0, 0x152

    .line 4977
    goto :goto_0

    .line 4979
    :pswitch_7
    const/16 v0, 0x14c

    .line 4980
    goto :goto_0

    .line 4982
    :pswitch_8
    const/16 v0, 0x149

    .line 4983
    goto :goto_0

    .line 4985
    :pswitch_9
    const/16 v0, 0x147

    .line 4986
    goto :goto_0

    .line 4988
    :pswitch_a
    const/16 v0, 0x13f

    .line 4989
    goto :goto_0

    .line 4991
    :pswitch_b
    const/16 v0, 0x14d

    .line 4992
    goto :goto_0

    .line 4994
    :pswitch_c
    const/16 v0, 0x148

    .line 4995
    goto :goto_0

    .line 4997
    :pswitch_d
    const/16 v0, 0x141

    .line 4998
    goto :goto_0

    .line 5000
    :pswitch_e
    const/16 v0, 0x143

    .line 5001
    goto :goto_0

    .line 5003
    :pswitch_f
    const/16 v0, 0x14b

    .line 5004
    goto :goto_0

    .line 5006
    :pswitch_10
    const/16 v0, 0x140

    .line 5007
    goto :goto_0

    .line 5009
    :pswitch_11
    const/16 v0, 0x14e

    .line 5010
    goto :goto_0

    .line 5012
    :pswitch_12
    const/16 v0, 0x14f

    .line 5013
    goto :goto_0

    .line 5015
    :pswitch_13
    const/16 v0, 0x13c

    .line 5016
    goto :goto_0

    .line 5018
    :pswitch_14
    const/16 v0, 0x13a

    .line 5019
    goto :goto_0

    .line 5021
    :pswitch_15
    const/16 v0, 0x155

    goto :goto_0

    .line 4959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_7
        :pswitch_b
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addUriListInSecureMode(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2362
    return-void
.end method

.method public androidBeamController(ZI)V
    .locals 6
    .param p1, "mode"    # Z
    .param p2, "mNfcState"    # I

    .prologue
    const/4 v5, 0x5

    .line 6631
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 6633
    .local v0, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    .line 6635
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 6636
    .local v1, "nState":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAndoridBeamEnabled nState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    if-eqz p1, :cond_3

    .line 6639
    if-ne v5, v1, :cond_2

    .line 6640
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 6645
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6646
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 6659
    .end local v1    # "nState":I
    :cond_1
    :goto_1
    return-void

    .line 6641
    .restart local v1    # "nState":I
    :cond_2
    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    .line 6642
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 6643
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 6649
    :cond_3
    if-eq v1, p2, :cond_1

    .line 6651
    const/4 v2, 0x1

    if-ne v2, p2, :cond_4

    .line 6652
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 6653
    :cond_4
    if-ne v5, p2, :cond_1

    .line 6654
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5313
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 5314
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 5315
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 5316
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 5317
    return-void
.end method

.method public getAntibandingByMCCForLatin()Ljava/lang/String;
    .locals 10

    .prologue
    .line 6237
    const-string v5, "000"

    .line 6238
    .local v5, "mcc":Ljava/lang/String;
    const-string v7, "gsm.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6240
    .local v6, "numeric":Ljava/lang/String;
    const-string v2, "338"

    .line 6241
    .local v2, "MCC_Jamaica":Ljava/lang/String;
    const-string v0, "722"

    .line 6242
    .local v0, "MCC_Argentina":Ljava/lang/String;
    const-string v1, "730"

    .line 6243
    .local v1, "MCC_Chile":Ljava/lang/String;
    const-string v3, "744"

    .line 6244
    .local v3, "MCC_Paraguay":Ljava/lang/String;
    const-string v4, "748"

    .line 6246
    .local v4, "MCC_Uruguay":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 6247
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6248
    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAntibandingByMCCForLatin : mcc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    :cond_0
    const-string v7, "338"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "722"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "730"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "744"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "748"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6253
    :cond_1
    const-string v7, "50hz"

    .line 6255
    :goto_0
    return-object v7

    :cond_2
    const-string v7, "60hz"

    goto :goto_0
.end method

.method public getAttachCamcorderMode()Z
    .locals 1

    .prologue
    .line 4015
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    return v0
.end method

.method public getAttachCameraMode()Z
    .locals 1

    .prologue
    .line 4001
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    return v0
.end method

.method public getAttachEmailMode()Z
    .locals 1

    .prologue
    .line 4031
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    .prologue
    .line 4023
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAutoContrast()I
    .locals 1

    .prologue
    .line 3591
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    return v0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    .prologue
    .line 6560
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 6561
    const/4 v0, 0x0

    .line 6563
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_auto_night_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5350
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 5352
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultBackCameraShootingModeOrder()V

    .line 5354
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5356
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 5358
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_back_camera_shooting_mode_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBeautyFaceMode()I
    .locals 1

    .prologue
    .line 6520
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    return v0
.end method

.method public getBeautyLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 4202
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 4205
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_beauty_level_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBurstDuration(I)I
    .locals 1
    .param p1, "shootingmode"    # I

    .prologue
    const/4 v0, 0x0

    .line 4789
    sparse-switch p1, :sswitch_data_0

    .line 4805
    :goto_0
    :sswitch_0
    return v0

    .line 4794
    :sswitch_1
    const v0, 0x2f9b8

    goto :goto_0

    .line 4796
    :sswitch_2
    const v0, 0x61a80

    goto :goto_0

    .line 4798
    :sswitch_3
    const v0, 0xc3500

    goto :goto_0

    .line 4789
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public getBurstMode()I
    .locals 3

    .prologue
    .line 4225
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 4226
    const/4 v0, 0x0

    .line 4228
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBurstShotsGuideTextDialog()I
    .locals 2

    .prologue
    .line 5472
    const-string v0, "pref_burst_shot_guide_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstShotsStorageTextDialog()I
    .locals 2

    .prologue
    .line 5485
    const-string v0, "pref_burst_shot_storage_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallStatus()I
    .locals 1

    .prologue
    .line 2610
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntishake()I
    .locals 3

    .prologue
    .line 3563
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 3564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    .line 3566
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    .prologue
    .line 3988
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderAudioZoom()I
    .locals 3

    .prologue
    .line 4351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_audiozoom_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 3924
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderRecordingMode()I
    .locals 1

    .prologue
    .line 3847
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 3868
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 3869
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEasyModeCamcorderResolution()I

    move-result v0

    .line 3871
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderResolutionChanged()Z
    .locals 1

    .prologue
    .line 6213
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    return v0
.end method

.method public getCamcorderVideoDuration()I
    .locals 2

    .prologue
    .line 2050
    const-string v0, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 3

    .prologue
    .line 2031
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 2033
    .local v0, "microsec":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2037
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2038
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 2045
    :goto_0
    return v1

    .line 2041
    :cond_0
    const v1, 0x36ee80

    goto :goto_0

    .line 2045
    :cond_1
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getCameraAntiShake()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3543
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 3546
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraDualEffect()I
    .locals 5

    .prologue
    const/16 v4, 0x2a

    .line 3420
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_dual_effect"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3421
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3422
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3423
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    .line 3427
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_dual_effect"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3428
    .local v0, "effect":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 3429
    const/16 v0, 0x2a

    .line 3430
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    .line 3432
    :cond_1
    return v0
.end method

.method public getCameraEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3502
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 3505
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraHDR()I
    .locals 3

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraISO()I
    .locals 1

    .prologue
    .line 3490
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 2136
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    return v0
.end method

.method public getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 2369
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 2696
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v0, :cond_0

    .line 2697
    const-string v0, "2976x2976"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2701
    :goto_0
    return v0

    .line 2698
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_1

    .line 2699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEasyModeCameraResolution()I

    move-result v0

    goto :goto_0

    .line 2701
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    .prologue
    .line 6205
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .param p1, "shortcutname"    # Ljava/lang/String;

    .prologue
    .line 5410
    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5411
    const/4 v0, 0x3

    .line 5467
    :goto_0
    return v0

    .line 5412
    :cond_0
    const-string v0, "shootingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5413
    const/4 v0, 0x1

    goto :goto_0

    .line 5414
    :cond_1
    const-string v0, "scenemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5415
    const/4 v0, 0x2

    goto :goto_0

    .line 5416
    :cond_2
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5417
    const/4 v0, 0x7

    goto :goto_0

    .line 5418
    :cond_3
    const-string v0, "focusmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5419
    const/4 v0, 0x5

    goto :goto_0

    .line 5420
    :cond_4
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5421
    const/4 v0, 0x6

    goto :goto_0

    .line 5422
    :cond_5
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5423
    const/16 v0, 0x8

    goto :goto_0

    .line 5424
    :cond_6
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5425
    const/4 v0, 0x4

    goto :goto_0

    .line 5426
    :cond_7
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5427
    const/16 v0, 0xbb9

    goto :goto_0

    .line 5428
    :cond_8
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5429
    const/16 v0, 0x9

    goto :goto_0

    .line 5430
    :cond_9
    const-string v0, "iso"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5431
    const/16 v0, 0xa

    goto :goto_0

    .line 5432
    :cond_a
    const-string v0, "exposuremeter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5433
    const/16 v0, 0xb

    goto :goto_0

    .line 5434
    :cond_b
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5435
    const/16 v0, 0x23

    goto :goto_0

    .line 5436
    :cond_c
    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5437
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 5438
    :cond_d
    const-string v0, "antishake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5439
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 5440
    :cond_e
    const-string v0, "autocontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5441
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 5442
    :cond_f
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5443
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 5444
    :cond_10
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5445
    const/16 v0, 0xbbb

    goto/16 :goto_0

    .line 5446
    :cond_11
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5447
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 5448
    :cond_12
    const-string v0, "fullview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5449
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 5450
    :cond_13
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5451
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 5452
    :cond_14
    const-string v0, "shuttersound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5453
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 5454
    :cond_15
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5455
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 5456
    :cond_16
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5457
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 5458
    :cond_17
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5459
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 5460
    :cond_18
    const-string v0, "recordingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5461
    const/16 v0, 0xbb8

    goto/16 :goto_0

    .line 5462
    :cond_19
    const-string v0, "audiorecording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5463
    const/16 v0, 0xbbc

    goto/16 :goto_0

    .line 5464
    :cond_1a
    const-string v0, "focusselectmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5465
    const/16 v0, 0x62

    goto/16 :goto_0

    .line 5467
    :cond_1b
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shuttersound_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSingleEffect()I
    .locals 1

    .prologue
    .line 3436
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getCameraVoiceCommand()I
    .locals 2

    .prologue
    .line 6446
    const-string v0, "pref_setup_voice_control_key"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getChangeDualEffectDialog()I
    .locals 2

    .prologue
    .line 6059
    const-string v0, "pref_change_dual_effect_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getChangeStorageSettingDialog()I
    .locals 2

    .prologue
    .line 6046
    const-string v0, "pref_change_storage_setting_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataWarningType()I
    .locals 1

    .prologue
    .line 4193
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    return v0
.end method

.method public getDefaultAutoNightDetectionMode()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 6571
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 6572
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6573
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6574
    .local v0, "autoNightDetectionMode":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultAutoNightDetectionMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6577
    .end local v0    # "autoNightDetectionMode":I
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v0
.end method

.method public getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1879
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBurstMode()I
    .locals 4

    .prologue
    .line 4235
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 4236
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4237
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_burstshot_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4240
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCamcorderAntishake()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    :cond_0
    return v1
.end method

.method public getDefaultCamcorderAudioZoom()I
    .locals 1

    .prologue
    .line 4347
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCamcorderQuality()I
    .locals 5

    .prologue
    .line 3948
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3949
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_videoquality_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3950
    .local v1, "quality":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCamcorderQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    return v1
.end method

.method public getDefaultCamcorderResolution()I
    .locals 4

    .prologue
    .line 3876
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3877
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3878
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camcorder_resolution_key"

    const-string v3, "1920x1080"

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3883
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 3880
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3881
    :cond_1
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 3883
    :cond_2
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultCameraFocusMode()I
    .locals 1

    .prologue
    .line 2662
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2663
    :cond_0
    const/4 v0, 0x1

    .line 2665
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCameraQuality()I
    .locals 5

    .prologue
    .line 3941
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3942
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_quality_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3943
    .local v1, "quality":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCameraQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    return v1
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    :cond_0
    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2709
    :goto_0
    return v0

    :cond_1
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2551
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2552
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2553
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2554
    .local v1, "flashMode":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFlashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "flashMode":I
    :cond_1
    return v1
.end method

.method public getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2010
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultQuickAccessMode()I
    .locals 1

    .prologue
    .line 4149
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultShootingMode()I
    .locals 1

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2399
    :cond_0
    const/4 v0, 0x0

    .line 2401
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFrontCameraDefaultShootingMode()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3955
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 3956
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3957
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3960
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method public getDualCameraEffectForHelpMode()I
    .locals 3

    .prologue
    .line 3440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_dual_effect"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualCaptureMode()I
    .locals 3

    .prologue
    .line 6541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_dual_shot_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectLeftBottomX()I
    .locals 1

    .prologue
    .line 5947
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    return v0
.end method

.method public getDualEffectLeftBottomY()I
    .locals 1

    .prologue
    .line 5955
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    return v0
.end method

.method public getDualEffectLeftTopX()I
    .locals 1

    .prologue
    .line 5899
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    return v0
.end method

.method public getDualEffectLeftTopY()I
    .locals 1

    .prologue
    .line 5907
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    return v0
.end method

.method public getDualEffectRectHeight()I
    .locals 2

    .prologue
    .line 5976
    const-string v0, "pref_camera_dual_rect_height"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectRectWidth()I
    .locals 2

    .prologue
    .line 5963
    const-string v0, "pref_camera_dual_rect_width"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectRightBottomX()I
    .locals 1

    .prologue
    .line 5931
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    return v0
.end method

.method public getDualEffectRightBottomY()I
    .locals 1

    .prologue
    .line 5939
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    return v0
.end method

.method public getDualEffectRightTopX()I
    .locals 1

    .prologue
    .line 5915
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    return v0
.end method

.method public getDualEffectRightTopY()I
    .locals 1

    .prologue
    .line 5923
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    return v0
.end method

.method public getDualTrackingGuideDialog()I
    .locals 2

    .prologue
    .line 5720
    const-string v0, "pref_dual_tracking_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEasyModeCamcorderResolution()I
    .locals 2

    .prologue
    .line 3888
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3889
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3890
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 3899
    :goto_0
    return v0

    .line 3892
    :cond_1
    const/16 v0, 0x13

    goto :goto_0

    .line 3896
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3897
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3899
    :cond_3
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getEasyModeCameraResolution()I
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 2714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2716
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2726
    :goto_0
    return v0

    .line 2717
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2718
    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2720
    :cond_1
    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2723
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2724
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2726
    :cond_3
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getEffectNotSupportedUHDPopup()I
    .locals 1

    .prologue
    .line 2527
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    return v0
.end method

.method public getExposureValue()I
    .locals 1

    .prologue
    .line 2646
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getExposureValueResourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 4692
    packed-switch p1, :pswitch_data_0

    .line 4712
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4694
    :pswitch_0
    const/high16 v0, -0x40000000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4696
    :pswitch_1
    const/high16 v0, -0x40400000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4698
    :pswitch_2
    const/high16 v0, -0x40800000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4700
    :pswitch_3
    const/high16 v0, -0x41000000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4702
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4704
    :pswitch_5
    const/high16 v0, 0x3f000000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4706
    :pswitch_6
    const/high16 v0, 0x3f800000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4708
    :pswitch_7
    const/high16 v0, 0x3fc00000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4710
    :pswitch_8
    const/high16 v0, 0x40000000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4692
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getFaceDetectionMode()I
    .locals 3

    .prologue
    .line 4298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_face_detection_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFaceZoomHelpTextDialog()I
    .locals 2

    .prologue
    .line 5834
    const-string v0, "pref_face_zoom_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFastMotionSpeed()I
    .locals 1

    .prologue
    .line 6727
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    return v0
.end method

.method public getFlashMode()I
    .locals 3

    .prologue
    .line 2547
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFocusSelectMode()I
    .locals 1

    .prologue
    .line 4108
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    return v0
.end method

.method public getFocusSelectModeInAutoMode()I
    .locals 1

    .prologue
    .line 4100
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    return v0
.end method

.method public getForcedShutterSound()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3790
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 3791
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3792
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3793
    .local v1, "forcedShutterSound":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "forcedShutterSound":I
    :cond_0
    return v1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5376
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 5378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultFrontCameraShootingModeOrder()V

    .line 5380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5382
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5384
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_front_camera_shooting_mode_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGPS()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3772
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 3775
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getGolfDirection()I
    .locals 2

    .prologue
    .line 6840
    const-string v0, "pref_golf_direction"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6670
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 6673
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHelpMode()I
    .locals 1

    .prologue
    .line 6836
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    return v0
.end method

.method public getLocationTagGuideDialog()I
    .locals 2

    .prologue
    .line 5627
    const-string v0, "pref_location_tag_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 2591
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    return v0
.end method

.method public getMagicShotDescriptionString()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0b01fc

    const v2, 0x7f0b01fb

    .line 4668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4671
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b01fd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b01fe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b01ff

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxRecordingSize()J
    .locals 4

    .prologue
    .line 2095
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2096
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2097
    :cond_0
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 2103
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    return-wide v0

    .line 2100
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2307
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getNetWork()I
    .locals 3

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_network_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 3728
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    return v0
.end method

.method public getNfcState()I
    .locals 2

    .prologue
    .line 6613
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 6615
    .local v0, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 6616
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 6618
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOnDeviceHelpScreen()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6013
    const/4 v6, 0x0

    .line 6014
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6016
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 6018
    .local v7, "result":Z
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6021
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6022
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    .line 6025
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 6026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6029
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 6022
    goto :goto_0

    .line 6025
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 6026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getOutFocusShotGuideDialog()I
    .locals 2

    .prologue
    .line 5733
    const-string v0, "pref_out_focus_shot_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOutdoorVisibility()I
    .locals 1

    .prologue
    .line 4062
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getPreferences()Lcom/sec/android/app/camera/ComboPreferences;
    .locals 3

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 2112
    new-instance v0, Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    .line 2113
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 2115
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    return-object v0
.end method

.method public getPreviousSideTouchMode()I
    .locals 1

    .prologue
    .line 4294
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    return v0
.end method

.method public getQuickAccessDialog()I
    .locals 2

    .prologue
    .line 5750
    const-string v0, "pref_quick_access_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuickAccessMode()I
    .locals 1

    .prologue
    .line 4126
    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteViewFinderLaunchEffectDownloadGuideDialog()I
    .locals 2

    .prologue
    .line 5667
    const-string v0, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchEffectGuideDialog()I
    .locals 2

    .prologue
    .line 5653
    const-string v0, "pref_remote_view_finder_launch_effect_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchGalleryGuideDialog()I
    .locals 2

    .prologue
    .line 5681
    const-string v0, "pref_remote_view_finder_launch_gallery_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchHelpGuideDialog()I
    .locals 2

    .prologue
    .line 5694
    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderResetCameraGuideDialog()I
    .locals 2

    .prologue
    .line 5707
    const-string v0, "pref_remote_view_finder_reset_camera_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderWifiDirectGuideDialog()I
    .locals 2

    .prologue
    .line 5640
    const-string v0, "pref_remote_view_finder_wifi_direct_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewfinderMode()I
    .locals 1

    .prologue
    .line 3709
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    return v0
.end method

.method public getRequestedRecordingSize()J
    .locals 4

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2074
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 2075
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2076
    :cond_1
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 2087
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    return-wide v0

    .line 2078
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 2080
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2081
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 2084
    :cond_6
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0
.end method

.method public getReview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3621
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 3624
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getReviewTimer()I
    .locals 1

    .prologue
    .line 3628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3634
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3630
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3632
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 3628
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSaveRichtone()I
    .locals 3

    .prologue
    .line 6492
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_save_richtone_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .prologue
    .line 2535
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4080
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 4083
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSettingValue(I)I
    .locals 6
    .param p1, "menuid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6072
    sparse-switch p1, :sswitch_data_0

    .line 6196
    const v3, -0xffff

    :cond_0
    :goto_0
    return v3

    .line 6074
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    goto :goto_0

    .line 6076
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    goto :goto_0

    .line 6078
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    goto :goto_0

    .line 6081
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    goto :goto_0

    .line 6083
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    goto :goto_0

    .line 6085
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    goto :goto_0

    .line 6087
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v3

    goto :goto_0

    .line 6089
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v3

    goto :goto_0

    .line 6091
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    goto :goto_0

    .line 6093
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v3

    goto :goto_0

    .line 6095
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v3

    goto :goto_0

    .line 6097
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v3

    goto :goto_0

    .line 6099
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    goto :goto_0

    .line 6101
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v3

    goto :goto_0

    .line 6104
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v3

    goto :goto_0

    .line 6106
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v3

    goto :goto_0

    .line 6108
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v3

    goto :goto_0

    .line 6110
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    goto :goto_0

    .line 6112
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v3

    goto :goto_0

    .line 6114
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    goto :goto_0

    .line 6116
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    goto :goto_0

    .line 6118
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v3

    goto :goto_0

    .line 6120
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v3

    goto :goto_0

    .line 6122
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    goto :goto_0

    .line 6124
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    goto :goto_0

    .line 6126
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getOutdoorVisibility()I

    move-result v3

    goto/16 :goto_0

    .line 6128
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v3

    goto/16 :goto_0

    .line 6130
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v3

    goto/16 :goto_0

    .line 6132
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    goto/16 :goto_0

    .line 6134
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v3

    goto/16 :goto_0

    .line 6136
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v3

    goto/16 :goto_0

    .line 6138
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v3

    goto/16 :goto_0

    .line 6140
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v3

    goto/16 :goto_0

    .line 6142
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v3

    goto/16 :goto_0

    .line 6144
    :sswitch_22
    const/4 v0, 0x1

    .line 6146
    .local v0, "b":Z
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6147
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6151
    :cond_1
    :goto_1
    if-nez v0, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 6148
    :catch_0
    move-exception v1

    .line 6149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 6153
    .end local v0    # "b":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_23
    const/4 v2, 0x1

    .line 6155
    .local v2, "f":Z
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6156
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 6160
    :cond_2
    :goto_2
    if-nez v2, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 6157
    :catch_1
    move-exception v1

    .line 6158
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 6162
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "f":Z
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v3

    goto/16 :goto_0

    .line 6164
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v3

    goto/16 :goto_0

    .line 6166
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getQuickAccessMode()I

    move-result v3

    goto/16 :goto_0

    .line 6168
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    goto/16 :goto_0

    .line 6170
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v3

    goto/16 :goto_0

    .line 6172
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKeyAs()I

    move-result v3

    goto/16 :goto_0

    .line 6174
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v3

    goto/16 :goto_0

    .line 6176
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v3

    goto/16 :goto_0

    .line 6178
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v3

    goto/16 :goto_0

    .line 6180
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v3

    goto/16 :goto_0

    .line 6182
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v3

    goto/16 :goto_0

    .line 6184
    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFastMotionSpeed()I

    move-result v3

    goto/16 :goto_0

    .line 6186
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v3

    goto/16 :goto_0

    .line 6188
    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v3

    goto/16 :goto_0

    .line 6190
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVoiceGuide()I

    move-result v3

    goto/16 :goto_0

    .line 6192
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v3

    goto/16 :goto_0

    .line 6194
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v3

    goto/16 :goto_0

    .line 6072
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x22 -> :sswitch_28
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_16
        0x2a -> :sswitch_22
        0x2b -> :sswitch_23
        0x35 -> :sswitch_21
        0x3f -> :sswitch_24
        0x47 -> :sswitch_27
        0x48 -> :sswitch_29
        0x4d -> :sswitch_2a
        0x51 -> :sswitch_2b
        0x55 -> :sswitch_2c
        0x57 -> :sswitch_30
        0x58 -> :sswitch_31
        0x59 -> :sswitch_32
        0x5a -> :sswitch_9
        0x62 -> :sswitch_2d
        0x63 -> :sswitch_33
        0x6c -> :sswitch_3
        0x70 -> :sswitch_25
        0x72 -> :sswitch_34
        0x78 -> :sswitch_26
        0x79 -> :sswitch_e
        0x138 -> :sswitch_d
        0xbb8 -> :sswitch_1b
        0xbb9 -> :sswitch_1c
        0xbbb -> :sswitch_1f
        0xbbc -> :sswitch_20
        0xbbf -> :sswitch_1d
        0xbc7 -> :sswitch_1e
        0x170e -> :sswitch_2e
        0x170f -> :sswitch_2f
    .end sparse-switch
.end method

.method public getShareMode()I
    .locals 1

    .prologue
    .line 3668
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    return v0
.end method

.method public getShootingMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2420
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 2421
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 2422
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    .line 2424
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2429
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_0
.end method

.method public getShootingModeGuideDialog(I)I
    .locals 2
    .param p1, "shootingmode"    # I

    .prologue
    .line 5552
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 5553
    .local v0, "keyShootingMdoe":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getShootingModeKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "shootingmode"    # I

    .prologue
    .line 5498
    const-string v0, ""

    .line 5499
    .local v0, "keyShootingMdoe":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 5548
    :goto_0
    return-object v0

    .line 5501
    :sswitch_0
    const-string v0, "pref_shootingmode_single_guide_dialog"

    .line 5502
    goto :goto_0

    .line 5504
    :sswitch_1
    const-string v0, "pref_shootingmode_beauty_guide_dialog"

    .line 5505
    goto :goto_0

    .line 5507
    :sswitch_2
    const-string v0, "pref_shootingmode_magic_guide_dialog"

    .line 5508
    goto :goto_0

    .line 5510
    :sswitch_3
    const-string v0, "pref_shootingmode_focusselct_guide_dialog"

    .line 5511
    goto :goto_0

    .line 5513
    :sswitch_4
    const-string v0, "pref_shootingmode_panorama_guide_dialog"

    .line 5514
    goto :goto_0

    .line 5516
    :sswitch_5
    const-string v0, "pref_shootingmode_3dtour_guide_dialog"

    .line 5517
    goto :goto_0

    .line 5519
    :sswitch_6
    const-string v0, "pref_shootingmode_dual_guide_dialog"

    .line 5520
    goto :goto_0

    .line 5522
    :sswitch_7
    const-string v0, "pref_shootingmode_cinepic_guide_dialog"

    .line 5523
    goto :goto_0

    .line 5525
    :sswitch_8
    const-string v0, "pref_shootingmode_soundshot_guide_dialog"

    .line 5526
    goto :goto_0

    .line 5528
    :sswitch_9
    const-string v0, "pref_shootingmode_sports_guide_dialog"

    .line 5529
    goto :goto_0

    .line 5531
    :sswitch_a
    const-string v0, "pref_shootingmode_3dpanorama_guide_dialog"

    .line 5532
    goto :goto_0

    .line 5534
    :sswitch_b
    const-string v0, "pref_shootingmode_richtone_guide_dialog"

    .line 5535
    goto :goto_0

    .line 5537
    :sswitch_c
    const-string v0, "pref_shootingmode_burst_guide_dialog"

    .line 5538
    goto :goto_0

    .line 5540
    :sswitch_d
    const-string v0, "pref_shootingmode_aqua_guide_dialog"

    .line 5541
    goto :goto_0

    .line 5543
    :sswitch_e
    const-string v0, "pref_shootingmode_night_guide_dialog"

    .line 5544
    goto :goto_0

    .line 5499
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x7 -> :sswitch_1
        0xe -> :sswitch_b
        0x11 -> :sswitch_c
        0x23 -> :sswitch_8
        0x25 -> :sswitch_a
        0x26 -> :sswitch_7
        0x27 -> :sswitch_e
        0x28 -> :sswitch_9
        0x2a -> :sswitch_d
        0x2d -> :sswitch_3
        0x2e -> :sswitch_2
        0x2f -> :sswitch_6
        0x30 -> :sswitch_5
    .end sparse-switch
.end method

.method public getShootingModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4945
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 4872
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->settingShootingModeToCommandId(I)I

    move-result v0

    .line 4874
    .local v0, "commandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x155

    if-ne p1, v1, :cond_1

    .line 4876
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getExternalShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4940
    :goto_0
    return-object v1

    .line 4879
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 4940
    :pswitch_0
    const-string v1, ""

    goto :goto_0

    .line 4881
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4883
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4885
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4887
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4889
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4891
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4893
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4895
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4897
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4902
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0166

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4905
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4908
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4910
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4912
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4914
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4916
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4918
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4920
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4922
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4924
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4926
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4928
    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4930
    :pswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4932
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4934
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0165

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4936
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4938
    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_c
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method public getShootingModeType()I
    .locals 1

    .prologue
    .line 6853
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    sparse-switch v0, :sswitch_data_0

    .line 6876
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 6855
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6857
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6859
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 6861
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 6863
    :sswitch_4
    const/16 v0, 0xb

    goto :goto_0

    .line 6866
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    .line 6868
    :sswitch_6
    const/16 v0, 0xe

    goto :goto_0

    .line 6870
    :sswitch_7
    const/16 v0, 0xf

    goto :goto_0

    .line 6872
    :sswitch_8
    const/16 v0, 0x10

    goto :goto_0

    .line 6874
    :sswitch_9
    const/16 v0, 0x11

    goto :goto_0

    .line 6853
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
        0x17 -> :sswitch_5
        0x25 -> :sswitch_4
        0x27 -> :sswitch_5
        0x2d -> :sswitch_7
        0x2e -> :sswitch_8
        0x2f -> :sswitch_6
        0x30 -> :sswitch_9
    .end sparse-switch
.end method

.method public getShootingModeValueForISPset(I)I
    .locals 4
    .param p1, "shootingmode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 4731
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 4784
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 4733
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 4737
    goto :goto_0

    .line 4740
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v2

    .line 4743
    goto :goto_0

    .line 4747
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 4749
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 4751
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 4753
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 4755
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 4757
    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 4759
    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 4761
    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 4765
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 4767
    :sswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 4769
    :sswitch_c
    const/16 v0, 0xf

    goto :goto_0

    .line 4771
    :sswitch_d
    const/16 v0, 0x10

    goto :goto_0

    .line 4773
    :sswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 4775
    :sswitch_f
    const/16 v0, 0x12

    goto :goto_0

    .line 4777
    :sswitch_10
    const/16 v0, 0x13

    goto :goto_0

    .line 4779
    :sswitch_11
    const/16 v0, 0x14

    goto :goto_0

    .line 4781
    :sswitch_12
    const/16 v0, 0x15

    goto :goto_0

    .line 4731
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_7
        0x7 -> :sswitch_2
        0xe -> :sswitch_9
        0x17 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_5
        0x1c -> :sswitch_b
        0x1f -> :sswitch_4
        0x22 -> :sswitch_6
        0x23 -> :sswitch_a
        0x25 -> :sswitch_8
        0x26 -> :sswitch_c
        0x27 -> :sswitch_d
        0x28 -> :sswitch_e
        0x2a -> :sswitch_f
        0x2d -> :sswitch_11
        0x2e -> :sswitch_10
        0x30 -> :sswitch_12
    .end sparse-switch
.end method

.method public getShortcutLayoutReset()I
    .locals 1

    .prologue
    .line 6739
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    return v0
.end method

.method public getShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .param p1, "shortcutname"    # Ljava/lang/String;

    .prologue
    .line 5402
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSideBarMenuOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_sidebar_item_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSideTouchGuideDialog()I
    .locals 2

    .prologue
    .line 5746
    const-string v0, "pref_side_touch_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSideTouchMode()I
    .locals 3

    .prologue
    .line 4274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_sidetouch_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlowMotionFactor()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6693
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    packed-switch v1, :pswitch_data_0

    .line 6701
    :goto_0
    :pswitch_0
    return v0

    .line 6697
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 6699
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 6693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSlowMotionSpeed()I
    .locals 1

    .prologue
    .line 6689
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    return v0
.end method

.method public getSlowMotionTimescale()I
    .locals 1

    .prologue
    .line 6706
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 6714
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6708
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 6710
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 6712
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 6706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSmartStablilizationDialog()I
    .locals 2

    .prologue
    .line 5614
    const-string v0, "pref_smart_stabilization_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSnapshotLimitationDialog()I
    .locals 2

    .prologue
    .line 5847
    const-string v0, "pref_snap_shot_limitation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSoundShotMode()I
    .locals 1

    .prologue
    .line 6508
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    return v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 3965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimeLapseFps(D)D
    .locals 2
    .param p1, "sensorInputFps"    # D

    .prologue
    .line 4842
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    packed-switch v0, :pswitch_data_0

    .line 4850
    .end local p1    # "sensorInputFps":D
    :goto_0
    return-wide p1

    .line 4844
    .restart local p1    # "sensorInputFps":D
    :pswitch_0
    const-wide/high16 v0, 0x4000000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    .line 4846
    :pswitch_1
    const-wide/high16 v0, 0x4010000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    .line 4848
    :pswitch_2
    const-wide/high16 v0, 0x4020000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    .line 4842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 2683
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6662
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 6663
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 6664
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6666
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTorchLightStatus()I
    .locals 1

    .prologue
    .line 2599
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    return v0
.end method

.method public getTouchToCapture()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4328
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    .line 4331
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_touch_to_capture_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getUriListInSecureMode()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 3714
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAudiozoomDialog()I
    .locals 2

    .prologue
    .line 5821
    const-string v0, "pref_video_audiozoom_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoFhdResolutionDialog()I
    .locals 2

    .prologue
    .line 5809
    const-string v0, "pref_video_fhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoStabilisationDialog()I
    .locals 2

    .prologue
    .line 5772
    const-string v0, "pref_video_stabilisation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoUhdResolutionDialog()I
    .locals 2

    .prologue
    .line 5785
    const-string v0, "pref_video_uhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoWqhdResolutionDialog()I
    .locals 2

    .prologue
    .line 5797
    const-string v0, "pref_video_wqhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 4259
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    return v0
.end method

.method public getVoiceGuide()I
    .locals 1

    .prologue
    .line 4315
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    return v0
.end method

.method public getVolumeKeyAs()I
    .locals 3

    .prologue
    .line 3651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_volume_key_as"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    .line 3652
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    return v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .prologue
    .line 3408
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getWifiP2pDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6263
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiP2pDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6259
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 3824
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getshowEditableShortcutGuideDialog()I
    .locals 2

    .prologue
    .line 5873
    const-string v0, "pref_editable_shortcut_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getshowLiveBeautyController()I
    .locals 2

    .prologue
    .line 5886
    const-string v0, "pref_show_live_beauty_controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getshowTurnOnBurstShotHelpTextDialog()I
    .locals 2

    .prologue
    .line 5860
    const-string v0, "pref_turn_on_burst_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleNotification(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 4391
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 4392
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4394
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 4397
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4398
    return-void
.end method

.method public initializeCamera()V
    .locals 1

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeBackCamera()V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraMode(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2179
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2180
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2181
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2183
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2184
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0

    .line 2185
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2186
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2187
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0

    .line 2188
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2189
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2190
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 3

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2197
    const-string v1, "CameraSettings"

    const-string v2, "unsupported back camera resolution value is changed to default."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2199
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2212
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2205
    const-string v1, "CameraSettings"

    const-string v2, "unsupported front camera resolution value is changed to default."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2208
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public initializeDefaultBackCameraShootingModeOrderList()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_5

    .line 1741
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1772
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1804
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1855
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1856
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1876
    :cond_5
    return-void
.end method

.method public initializeDefaultFrontCameraShootingModeOrderList()V
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_3

    .line 1899
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1911
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2002
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2007
    :cond_3
    return-void
.end method

.method public initializeDefaultOrderList()V
    .locals 2

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1645
    const v0, 0x7f0a002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    .line 1646
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0a000e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    .line 1648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_1
    return-void
.end method

.method public isAndroidBeamEnabled()Z
    .locals 2

    .prologue
    .line 6595
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 6597
    .local v0, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 6598
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    .line 6600
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCSCUsedInManyCountriesForLatin()Z
    .locals 3

    .prologue
    .line 6226
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6228
    .local v0, "code":Ljava/lang/String;
    const-string v1, "TFG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6229
    :cond_0
    const-string v1, "CameraSettings"

    const-string v2, "isCSCUsedInManyCountriesForLatin : SalesCode = TFG, TPA, TTT, JDI, PCI "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6231
    const/4 v1, 0x1

    .line 6233
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCamcorderFastMotionEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2277
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return v0

    .line 2282
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCamcorderRecordingMMSMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2237
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return v0

    .line 2241
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 2242
    goto :goto_0
.end method

.method public isCamcorderSlowMotionEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2255
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2266
    :cond_0
    return v1
.end method

.method public isCamcorderSmoothMotionEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    :cond_0
    return v1
.end method

.method public isCoverMode()Z
    .locals 1

    .prologue
    .line 2338
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    return v0
.end method

.method public isDataCheckEnabled()Z
    .locals 3

    .prologue
    .line 4178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_datacheck_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDualBackCamera()Z
    .locals 2

    .prologue
    .line 2225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEULAEnabled()Z
    .locals 3

    .prologue
    .line 4163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_eula_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEasyMode()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    return v0
.end method

.method public isExternalShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2494
    packed-switch p1, :pswitch_data_0

    .line 2501
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2498
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2494
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcEnabled()Z
    .locals 2

    .prologue
    .line 6604
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 6606
    .local v0, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 6607
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    .line 6609
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isNotificationExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4401
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4402
    const/4 v0, 0x1

    .line 4403
    :cond_0
    return v0
.end method

.method public isP2pEnabled()Z
    .locals 5

    .prologue
    .line 6353
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6354
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 6355
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 6359
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 6356
    :catch_0
    move-exception v1

    .line 6357
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "CameraSettings"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6359
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRecordingSlowMotionEnabled()Z
    .locals 1

    .prologue
    .line 4828
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureMode()Z
    .locals 1

    .prologue
    .line 4039
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    .prologue
    .line 2233
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 5
    .param p1, "resolution"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2911
    const/4 v0, -0x1

    .line 2912
    .local v0, "mmsResolution":I
    sparse-switch p1, :sswitch_data_0

    .line 2948
    :goto_0
    :sswitch_0
    return v2

    :sswitch_1
    move v2, v1

    .line 2920
    goto :goto_0

    :sswitch_2
    move v2, v1

    .line 2924
    goto :goto_0

    :sswitch_3
    move v2, v1

    .line 2930
    goto :goto_0

    .line 2932
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_1

    .line 2933
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2934
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2937
    :cond_1
    if-ne p1, v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 2939
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_4

    .line 2940
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2941
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2946
    :cond_4
    :goto_2
    if-ne p1, v0, :cond_6

    :goto_3
    move v2, v1

    goto :goto_0

    .line 2943
    :cond_5
    const/16 v0, 0x13

    goto :goto_2

    :cond_6
    move v1, v2

    .line 2946
    goto :goto_3

    .line 2912
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_3
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_0
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 2746
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 2841
    :goto_0
    :pswitch_0
    return v0

    .line 2763
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 2841
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2765
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2767
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2769
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 2771
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2773
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 2775
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 2777
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 2779
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 2781
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 2785
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 2789
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 2791
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 2793
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 2795
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 2799
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 2803
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 2807
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 2809
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 2811
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 2817
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 2819
    goto :goto_0

    :pswitch_17
    move v0, v1

    .line 2821
    goto :goto_0

    :pswitch_18
    move v0, v1

    .line 2823
    goto :goto_0

    :pswitch_19
    move v0, v1

    .line 2825
    goto :goto_0

    :pswitch_1a
    move v0, v1

    .line 2827
    goto :goto_0

    :pswitch_1b
    move v0, v1

    .line 2829
    goto :goto_0

    :pswitch_1c
    move v0, v1

    .line 2831
    goto :goto_0

    :pswitch_1d
    move v0, v1

    .line 2833
    goto :goto_0

    :pswitch_1e
    move v0, v1

    .line 2835
    goto :goto_0

    :pswitch_1f
    move v0, v1

    .line 2837
    goto :goto_0

    :pswitch_20
    move v0, v1

    .line 2839
    goto :goto_0

    .line 2763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1e
        :pswitch_1f
        :pswitch_13
        :pswitch_1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_20
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1c
        :pswitch_8
        :pswitch_19
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public isSupportedBackCameraShootingMode(I)Z
    .locals 2
    .param p1, "shootingmode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3009
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 3071
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 3013
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 3017
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 3019
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 3021
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 3027
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 3029
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 3031
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 3033
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 3037
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 3039
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 3041
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 3043
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 3045
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 3047
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 3049
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 3053
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 3055
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 3057
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 3061
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 3065
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 3069
    goto :goto_0

    .line 3009
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_16
    .end packed-switch
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 5
    .param p1, "resolution"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2953
    const/4 v0, -0x1

    .line 2954
    .local v0, "mmsResolution":I
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2986
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    move v1, v2

    .line 2958
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 2962
    goto :goto_0

    :sswitch_3
    move v1, v2

    .line 2964
    goto :goto_0

    :sswitch_4
    move v1, v2

    .line 2968
    goto :goto_0

    .line 2970
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_2

    .line 2971
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2972
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2975
    :cond_2
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 2977
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_4

    .line 2978
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2979
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2984
    :cond_4
    :goto_1
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 2981
    :cond_5
    const/16 v0, 0x13

    goto :goto_1

    .line 2954
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x1f -> :sswitch_1
        0x22 -> :sswitch_2
        0x29 -> :sswitch_4
    .end sparse-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2846
    packed-switch p1, :pswitch_data_0

    .line 2906
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2876
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2880
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2898
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2904
    goto :goto_0

    .line 2846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isSupportedFrontCameraShootingMode(I)Z
    .locals 2
    .param p1, "shootingmode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3076
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 3132
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 3080
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 3082
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 3084
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 3086
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 3088
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 3094
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 3096
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 3098
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 3100
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 3102
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 3104
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 3106
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 3108
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 3110
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 3112
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 3114
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 3116
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 3118
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 3122
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 3124
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 3128
    goto :goto_0

    .line 3076
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_1
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSupportedSlowMotionCamcorderResolution(II)Z
    .locals 1
    .param p1, "resolution"    # I
    .param p2, "speed"    # I

    .prologue
    const/4 v0, 0x1

    .line 2991
    packed-switch p1, :pswitch_data_0

    .line 3002
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 2991
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSupportedVideoStabilization()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2741
    :cond_0
    :goto_0
    return v0

    .line 2733
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2735
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 2741
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    .prologue
    .line 2638
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    .prologue
    .line 2622
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    .prologue
    .line 2630
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public isVideocallPresetSelected()Z
    .locals 1

    .prologue
    .line 5303
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    return v0
.end method

.method public loadDualEffectPositionFromPreference()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6002
    const-string v0, "pref_camera_dual_lefttop_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    .line 6003
    const-string v0, "pref_camera_dual_lefttop_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    .line 6004
    const-string v0, "pref_camera_dual_righttop_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    .line 6005
    const-string v0, "pref_camera_dual_righttop_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    .line 6006
    const-string v0, "pref_camera_dual_rightbottom_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    .line 6007
    const-string v0, "pref_camera_dual_rightbottom_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    .line 6008
    const-string v0, "pref_camera_dual_leftbottom_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    .line 6009
    const-string v0, "pref_camera_dual_leftbottom_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    .line 6010
    return-void
.end method

.method public varargs loadFromPreferences([I)V
    .locals 7
    .param p1, "indices"    # [I

    .prologue
    .line 1329
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1330
    .local v2, "index":I
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromPreferences - index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    sparse-switch v2, :sswitch_data_0

    .line 1518
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in loadFromPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1334
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 1335
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1339
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1340
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1344
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 1345
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1349
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 1350
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1354
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    .line 1355
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDualEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1359
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 1360
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mISO : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1364
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 1365
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mExposureMeter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1369
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    .line 1370
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<fullview> loadFromPreferences mFullviewPreview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1375
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    .line 1376
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDR : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1380
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    .line 1381
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1385
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 1386
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1390
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 1391
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1395
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 1396
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1400
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 1401
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGPS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1405
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1406
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShutterSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1410
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1411
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStorage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1415
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 1416
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1420
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1421
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1425
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1426
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1430
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 1431
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1442
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 1443
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVoiceCommand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1447
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 1448
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGuideLine : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1452
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    .line 1453
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRichToneMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1457
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    .line 1458
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeautyFaceMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1462
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKeyAs()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    .line 1463
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeKeyAs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1467
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    .line 1468
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFaceDetectionMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1472
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    .line 1473
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTouchToCapture : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1477
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    .line 1478
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBurstMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1482
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    .line 1483
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSideTouchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1487
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    .line 1488
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoNightDetection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1492
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    .line 1493
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDualCaptureMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1497
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    .line 1498
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAudioZoom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1502
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    .line 1503
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRemoteViewfinderMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1507
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    .line 1508
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeautyLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1512
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    .line 1513
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusSelectMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1522
    .end local v2    # "index":I
    :cond_0
    return-void

    .line 1331
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x13 -> :sswitch_16
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_10
        0x22 -> :sswitch_17
        0x26 -> :sswitch_11
        0x35 -> :sswitch_0
        0x3f -> :sswitch_1c
        0x47 -> :sswitch_15
        0x48 -> :sswitch_19
        0x51 -> :sswitch_18
        0x55 -> :sswitch_1a
        0x57 -> :sswitch_1e
        0x58 -> :sswitch_1f
        0x5a -> :sswitch_5
        0x62 -> :sswitch_1b
        0x63 -> :sswitch_21
        0x6c -> :sswitch_1
        0x6d -> :sswitch_22
        0x70 -> :sswitch_1d
        0x72 -> :sswitch_23
        0x79 -> :sswitch_9
        0x138 -> :sswitch_8
        0xbb9 -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbf -> :sswitch_14
        0xbc7 -> :sswitch_20
    .end sparse-switch
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4380
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I
    .param p3, "syncmode"    # Z

    .prologue
    .line 4383
    if-eqz p3, :cond_0

    .line 4384
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 4388
    :goto_0
    return-void

    .line 4386
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/SharedPreferences;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 2028
    return-void
.end method

.method public refreshButtonDimForCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1190
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 1191
    .local v0, "dimController":Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1192
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1193
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1194
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1195
    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1196
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1199
    const/16 v1, 0xbc7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1203
    const/16 v1, 0xbb8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1204
    const/16 v1, 0x35

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1205
    const/16 v1, 0x63

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1206
    const/16 v1, 0x57

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1207
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1208
    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTorchLightStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1209
    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCallStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1210
    const/16 v1, 0x72

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1213
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1228
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1216
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1217
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1218
    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1220
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1223
    :cond_3
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshCameraSettingValues()V
    .locals 2

    .prologue
    .line 1525
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1526
    return-void
.end method

.method public refreshSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 1319
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 1326
    return-void

    .line 1319
    :array_0
    .array-data 4
        0x3
        0x6c
        0x4
        0xbb9
        0x5
        0xb
        0x138
        0x14
        0x15
        0x16
        0x26
        0xc
        0x79
        0xd
        0xbbf
        0x10
        0xbbb
        0x11
        0x13
        0x47
        0x35
        0x48
        0x55
        0x3f
        0x70
        0x57
        0x58
        0x62
        0xbc7
        0xbc7
        0x6d
        0x72
    .end array-data
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    .prologue
    .line 4367
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 4368
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4369
    monitor-exit v1

    .line 4370
    return-void

    .line 4369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestGroupInfo()V
    .locals 4

    .prologue
    .line 6396
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraSettings"

    const-string v1, "requestGroupInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 6399
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 6401
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 6402
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 6403
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 6405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_2

    .line 6407
    const-string v0, "CameraSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6443
    :goto_0
    monitor-exit p0

    return-void

    .line 6411
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/sec/android/app/camera/CameraSettings$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraSettings$1;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6441
    :cond_3
    :try_start_2
    const-string v0, "CameraSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetButtonDim()V
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 1316
    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5261
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 5262
    const/16 v0, 0x12

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5263
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 5264
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5265
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 5266
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5267
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 5268
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5269
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 5270
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 5271
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 5275
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 5276
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 5277
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 5278
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 5283
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCommonGlobalSettings()V

    .line 5284
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraGlobalSettings()V

    .line 5285
    return-void
.end method

.method public resetEditableSideBarLayout()V
    .locals 1

    .prologue
    .line 5288
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSideBarMenuOrder(Ljava/lang/String;)V

    .line 5289
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .param p1, "recordingMode"    # I

    .prologue
    .line 3860
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3861
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 3865
    :goto_0
    return-void

    .line 3863
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    goto :goto_0
.end method

.method public resetObservers()V
    .locals 2

    .prologue
    .line 5307
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 5308
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5309
    monitor-exit v1

    .line 5310
    return-void

    .line 5309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetShootingModeGuideDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5567
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5570
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5573
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5579
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5585
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5591
    const/16 v0, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5594
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5600
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    .line 5611
    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 1

    .prologue
    .line 5292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultBackCameraShootingModeOrder()V

    .line 5293
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    .line 5294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultFrontCameraShootingModeOrder()V

    .line 5295
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 5296
    return-void
.end method

.method public resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1622
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1623
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1625
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1627
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    .prologue
    .line 3842
    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 3844
    return-void
.end method

.method public restoreFromHelpMode()V
    .locals 2

    .prologue
    .line 6791
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6792
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 6795
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6796
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 6798
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6799
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 6801
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6802
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 6805
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6806
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 6808
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6809
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    .line 6812
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6813
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 6815
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6816
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 6818
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6819
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 6821
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6822
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 6824
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6825
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 6827
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6828
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 6830
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6831
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 6833
    :cond_c
    return-void
.end method

.method saveBitmapFile(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 6267
    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard/Android/data/com.sec.android.app.camera"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6268
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6271
    :cond_0
    const/4 v2, 0x0

    .line 6273
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6274
    .end local v2    # "f":Ljava/io/FileOutputStream;
    .local v3, "f":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 6279
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 6281
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6285
    :cond_1
    :goto_1
    return-void

    .line 6275
    :catch_0
    move-exception v1

    .line 6276
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 6282
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 6283
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 6275
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public saveDualEffectPositionInPreference()V
    .locals 3

    .prologue
    .line 5989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5990
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_dual_lefttop_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5991
    const-string v1, "pref_camera_dual_lefttop_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5992
    const-string v1, "pref_camera_dual_righttop_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5993
    const-string v1, "pref_camera_dual_righttop_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5994
    const-string v1, "pref_camera_dual_rightbottom_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5995
    const-string v1, "pref_camera_dual_rightbottom_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5996
    const-string v1, "pref_camera_dual_leftbottom_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5997
    const-string v1, "pref_camera_dual_leftbottom_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5998
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5999
    return-void
.end method

.method public setAndroidBeamDisabled()V
    .locals 2

    .prologue
    .line 6622
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 6624
    .local v0, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 6625
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6626
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 6628
    :cond_0
    return-void
.end method

.method public setAttachCamcorderMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 4019
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    .line 4020
    return-void
.end method

.method public setAttachCameraMode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4005
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    if-eq v0, p1, :cond_0

    .line 4006
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttachCameraMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    .line 4009
    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 4010
    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 4012
    :cond_0
    return-void
.end method

.method public setAttachEmailMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 4035
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    .line 4036
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 4027
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 4028
    return-void
.end method

.method public setAutoContrast(I)V
    .locals 3
    .param p1, "autocontrast"    # I

    .prologue
    .line 3595
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    if-eq v0, p1, :cond_0

    .line 3596
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 3598
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3600
    :cond_0
    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 6582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_auto_night_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    .line 6584
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    if-eq v1, p1, :cond_0

    .line 6585
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoNightDetectionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6586
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    .line 6587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_auto_night_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6590
    const/16 v1, 0x57

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 6592
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 5362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_back_camera_shooting_mode_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 5363
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5364
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackCameraShootingModeOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5365
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 5367
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5369
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5373
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBeautyFaceMode(I)V
    .locals 3
    .param p1, "beautyFaceMode"    # I

    .prologue
    .line 6524
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    if-eq v0, p1, :cond_0

    .line 6525
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyFaceMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6526
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    .line 6527
    const/16 v0, 0x51

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 6529
    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 4
    .param p1, "beautyLevel"    # I

    .prologue
    .line 4209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_beauty_level_key"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    .line 4210
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    if-eq v1, p1, :cond_0

    .line 4211
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeautyLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    .line 4213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4214
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4217
    const/16 v1, 0x6d

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4219
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBurstMode(I)V
    .locals 4
    .param p1, "burstmode"    # I

    .prologue
    .line 4245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    .line 4246
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    if-eq v1, p1, :cond_0

    .line 4247
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    .line 4249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_burst_settings_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4253
    const/16 v1, 0x3f

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4255
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBurstShotsGuideTextDialog(I)V
    .locals 4
    .param p1, "burstShotsGuideTextDialog"    # I

    .prologue
    .line 5476
    const-string v1, "pref_burst_shot_guide_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5477
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstShotsGuideTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5479
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_burst_shot_guide_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5480
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5482
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBurstShotsStorageTextDialog(I)V
    .locals 4
    .param p1, "burstShotsStorageTextDialog"    # I

    .prologue
    .line 5489
    const-string v1, "pref_burst_shot_storage_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5490
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstShotsStorageTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5492
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_burst_shot_storage_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5495
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCallStatus(I)V
    .locals 2
    .param p1, "callStatus"    # I

    .prologue
    .line 2614
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    if-eq v0, p1, :cond_0

    .line 2615
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    .line 2616
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2617
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleCallStatusChanged(I)V

    .line 2619
    :cond_0
    return-void
.end method

.method public setCamcorderAntishake(I)V
    .locals 4
    .param p1, "antishake"    # I

    .prologue
    .line 3578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 3579
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    if-eq v1, p1, :cond_0

    .line 3580
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 3582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3583
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3586
    const/16 v1, 0xbbf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3588
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .param p1, "audioRecording"    # I

    .prologue
    .line 3992
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 3993
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 3996
    const/16 v0, 0xbbc

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3998
    :cond_0
    return-void
.end method

.method public setCamcorderAudioZoom(I)V
    .locals 4
    .param p1, "camcorderAudioZoom"    # I

    .prologue
    .line 4355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_audiozoom_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    .line 4356
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    if-eq v1, p1, :cond_0

    .line 4357
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAudioZoom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    .line 4359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4360
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_audiozoom_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4362
    const/16 v1, 0xbc7

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4364
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderQuality(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 3928
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 3929
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 3930
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 3932
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3933
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3936
    const/16 v1, 0xbbb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3938
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderRecordingMode(I)V
    .locals 3
    .param p1, "recordingMode"    # I

    .prologue
    .line 3851
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 3852
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 3854
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 3855
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3857
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 6
    .param p1, "resolution"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3905
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 3906
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v3, p1, :cond_0

    .line 3907
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCamcorderResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 3909
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3910
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camcorder_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3911
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3913
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3914
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 3917
    const/16 v2, 0xbb9

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3920
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setCamcorderResolutionChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 6209
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 6210
    return-void
.end method

.method public setCamcorderVideoDuration(I)V
    .locals 4
    .param p1, "videoDuration"    # I

    .prologue
    .line 2054
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 2055
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 2056
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 2058
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2059
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2060
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2062
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraAntiShake(I)V
    .locals 4
    .param p1, "antishake"    # I

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    .line 3551
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    if-eq v1, p1, :cond_0

    .line 3552
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    .line 3554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3555
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3558
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3560
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraDualEffect(I)V
    .locals 5
    .param p1, "effect"    # I

    .prologue
    const/4 v4, 0x0

    .line 3466
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraDualEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_dual_effect"

    const/16 v3, 0x2a

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    .line 3469
    const/16 v1, 0x33

    if-ne p1, v1, :cond_2

    .line 3470
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    .line 3475
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    if-eq v1, p1, :cond_0

    const/16 v1, 0x28

    if-lt p1, v1, :cond_0

    .line 3476
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    .line 3477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3478
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3482
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1

    .line 3483
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    .line 3486
    :cond_1
    const/16 v1, 0x5a

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3487
    return-void

    .line 3472
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    goto :goto_0
.end method

.method public setCameraEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 5339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 5340
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5341
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 5343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5344
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5347
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 4
    .param p1, "effect"    # I

    .prologue
    const/16 v3, 0x8

    .line 3444
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_3

    .line 3447
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 3448
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectMode(II)V

    .line 3449
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3451
    :cond_2
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 3462
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3463
    return-void
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .param p1, "exposuremeter"    # I

    .prologue
    .line 3509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 3510
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    if-eq v1, p1, :cond_0

    .line 3511
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 3513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3514
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3517
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3519
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraFocusMode(I)V
    .locals 4
    .param p1, "focusMode"    # I

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 2671
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 2672
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 2674
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2678
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2680
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 4
    .param p1, "hdr"    # I

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    .line 3527
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    if-eq v1, p1, :cond_0

    .line 3528
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraHDR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    .line 3530
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3531
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3534
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_1

    .line 3535
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3540
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 3537
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraISO(I)V
    .locals 3
    .param p1, "iso"    # I

    .prologue
    .line 3494
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v0, p1, :cond_0

    .line 3495
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 3497
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3499
    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 2145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    .line 2146
    return-void
.end method

.method public setCameraId(IZ)V
    .locals 5
    .param p1, "cameraId"    # I
    .param p2, "withChangeMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2149
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2150
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraId - wrong camera id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2159
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 2161
    if-eqz p2, :cond_0

    .line 2162
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2163
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    .line 2164
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    .line 2165
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 2166
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    .line 2167
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    .line 2168
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 2169
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    .line 2170
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    .line 2171
    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2172
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    .line 2173
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0
.end method

.method public setCameraModeForDualCamera(I)V
    .locals 2
    .param p1, "cameraMode"    # I

    .prologue
    .line 2390
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    if-eq v0, p1, :cond_0

    .line 2391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    .line 2392
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    .line 2393
    const/16 v0, 0x24

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2395
    :cond_0
    return-void
.end method

.method public setCameraQuality(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 3607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 3608
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 3609
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 3611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3612
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3615
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 3618
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 7
    .param p1, "resolution"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3137
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v3, :cond_0

    .line 3138
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 3139
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3140
    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3171
    :goto_0
    return v1

    .line 3144
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 3145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3146
    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set wrong resolution for front camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 3147
    goto :goto_0

    .line 3148
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3149
    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set wrong resolution for back camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 3150
    goto :goto_0

    .line 3154
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 3155
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v3, p1, :cond_3

    .line 3157
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCameraResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3163
    const-string v3, "pref_camera_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 3166
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 3167
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3168
    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v1, v2

    .line 3171
    goto/16 :goto_0
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 6201
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 6202
    return-void
.end method

.method public setCameraResolutionForDual(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 3175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3176
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3178
    const/4 v1, 0x1

    return v1
.end method

.method public setCameraShutterSound(I)V
    .locals 5
    .param p1, "shuttersound"    # I

    .prologue
    const/4 v4, 0x1

    .line 3805
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getForcedShutterSound()I

    move-result v1

    .line 3806
    .local v1, "forcedShutterSound":I
    if-ne v1, v4, :cond_1

    .line 3807
    const-string v2, "CameraSettings"

    const-string v3, "In this model, shutter sound must be playbacked"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    :cond_0
    :goto_0
    return-void

    .line 3811
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_shuttersound_key"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 3812
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v2, p1, :cond_0

    .line 3813
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraShutterSound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 3815
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3816
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_shuttersound_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3817
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3819
    const/16 v2, 0x15

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 1
    .param p1, "voicecommand"    # I

    .prologue
    .line 6450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(IZ)V

    .line 6451
    return-void
.end method

.method public setCameraVoiceCommand(IZ)V
    .locals 5
    .param p1, "voicecommand"    # I
    .param p2, "showHelpPopup"    # Z

    .prologue
    const/4 v4, 0x1

    .line 6454
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 6455
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    .line 6457
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6489
    :cond_1
    :goto_0
    return-void

    .line 6461
    :cond_2
    const-string v1, "pref_setup_voice_control_key"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 6462
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    if-eq v1, p1, :cond_1

    .line 6463
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraVoiceCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6464
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 6465
    if-ne p1, v4, :cond_5

    .line 6466
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6467
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 6470
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6471
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 6472
    if-eqz p2, :cond_4

    .line 6473
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    .line 6484
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6485
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_voice_control_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6487
    const/16 v1, 0x47

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    .line 6477
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const-string v1, "CameraSettings"

    const-string v2, "setCameraVoiceCommand OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 6479
    if-eqz p2, :cond_4

    .line 6480
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    goto :goto_1
.end method

.method public setChangeDualEffectDialog(I)V
    .locals 4
    .param p1, "changeDualEffectDialog"    # I

    .prologue
    .line 6063
    const-string v1, "pref_change_dual_effect_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 6064
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeDualEffectDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6066
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_change_dual_effect_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6067
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6069
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setChangeStorageSettingDialog(I)V
    .locals 4
    .param p1, "changeStorageSettingDialog"    # I

    .prologue
    .line 6050
    const-string v1, "pref_change_storage_setting_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 6051
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeStorageSettingDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6053
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_change_storage_setting_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6054
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6056
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCoverMode(Z)V
    .locals 0
    .param p1, "coverMode"    # Z

    .prologue
    .line 2343
    return-void
.end method

.method public setDataCheckEnable(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_datacheck_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    .line 4183
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4184
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataCheckEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    .line 4186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_datacheck_key"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4190
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setDataWarningType(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 4197
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataWarningType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    .line 4199
    return-void
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 5

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 1886
    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    .line 1888
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1889
    .local v1, "item":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 1892
    .end local v1    # "item":I
    :cond_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void
.end method

.method public setDefaultCamcorderVideoDuration()V
    .locals 3

    .prologue
    .line 2065
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 2066
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2067
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2069
    return-void
.end method

.method public setDefaultCameraEditableShortcutOrder()V
    .locals 4

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultOrderList()V

    .line 1725
    const-string v1, ""

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    if-ge v0, v1, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1727
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1731
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "99,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_1

    .line 1734
    :cond_1
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    return-void
.end method

.method public setDefaultFrontCameraShootingModeOrder()V
    .locals 5

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 2017
    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    .line 2019
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2020
    .local v1, "item":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 2023
    .end local v1    # "item":I
    :cond_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-void
.end method

.method public setDefaultSideBarMenuOrder()V
    .locals 3

    .prologue
    .line 1704
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    .line 1713
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    .line 1718
    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSideBarMenuOrder, order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void
.end method

.method public setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V
    .locals 4
    .param p1, "iShootShareService"    # Lcom/samsung/shareshot/IShareShotService;

    .prologue
    .line 6333
    if-eqz p1, :cond_0

    .line 6334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 6335
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 6336
    const-string v2, "CameraSettings"

    const-string v3, "setDeviceName is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6339
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/ShareShot;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    .line 6340
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6349
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 6342
    .restart local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 6344
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6345
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDeviceType()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 6288
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 6303
    .local v3, "sDeviceTypeImages":[I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 6304
    .local v0, "device":Ljava/lang/String;
    const/4 v4, 0x0

    .line 6307
    .local v4, "tokens":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6308
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6311
    :cond_0
    if-eqz v0, :cond_1

    array-length v5, v4

    if-ge v5, v8, :cond_2

    .line 6312
    :cond_1
    const-string v5, "CameraSettings"

    const-string v6, "Malformed primaryDeviceType"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6313
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    .line 6330
    :goto_0
    return-void

    .line 6318
    :cond_2
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6323
    .local v2, "mDeviceType":I
    :goto_1
    if-lt v2, v8, :cond_3

    if-ge v2, v10, :cond_3

    .line 6324
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6319
    .end local v2    # "mDeviceType":I
    :catch_0
    move-exception v1

    .line 6320
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CameraSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse device type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6321
    const/4 v2, -0x1

    .restart local v2    # "mDeviceType":I
    goto :goto_1

    .line 6327
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6288
    nop

    :array_0
    .array-data 4
        0x7f020322
        0x7f020326
        0x7f020329
        0x7f020321
        0x7f02032a
        0x7f020328
        0x7f020323
        0x7f020327
        0x7f020325
        0x7f02032b
        0x7f020320
        0x7f020324
    .end array-data
.end method

.method public setDualCaptureMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 6545
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_dual_shot_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    .line 6546
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    if-eq v1, p1, :cond_0

    .line 6547
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualShotMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    .line 6549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6550
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_dual_shot_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6551
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6552
    const/16 v1, 0x58

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 6554
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setDualEffectLeftBottomX(I)V
    .locals 0
    .param p1, "dualEffectLeftBottomX"    # I

    .prologue
    .line 5951
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    .line 5952
    return-void
.end method

.method public setDualEffectLeftBottomY(I)V
    .locals 0
    .param p1, "dualEffectLeftBottomY"    # I

    .prologue
    .line 5959
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    .line 5960
    return-void
.end method

.method public setDualEffectLeftTopX(I)V
    .locals 0
    .param p1, "dualEffectLeftTopX"    # I

    .prologue
    .line 5903
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    .line 5904
    return-void
.end method

.method public setDualEffectLeftTopY(I)V
    .locals 0
    .param p1, "dualEffectLeftTopY"    # I

    .prologue
    .line 5911
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    .line 5912
    return-void
.end method

.method public setDualEffectRectHeight(I)V
    .locals 4
    .param p1, "dualEffectRectHeight"    # I

    .prologue
    .line 5980
    const-string v1, "pref_camera_dual_rect_height"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5981
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualEffectRectHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5982
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5983
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_dual_rect_height"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5984
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5986
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setDualEffectRectWidth(I)V
    .locals 4
    .param p1, "dualEffectRectWidth"    # I

    .prologue
    .line 5967
    const-string v1, "pref_camera_dual_rect_width"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5968
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualEffectRectWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5970
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_dual_rect_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5971
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5973
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setDualEffectRightBottomX(I)V
    .locals 0
    .param p1, "dualEffectRightBottomX"    # I

    .prologue
    .line 5935
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    .line 5936
    return-void
.end method

.method public setDualEffectRightBottomY(I)V
    .locals 0
    .param p1, "dualEffectRightBottomY"    # I

    .prologue
    .line 5943
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    .line 5944
    return-void
.end method

.method public setDualEffectRightTopX(I)V
    .locals 0
    .param p1, "dualEffectRightTopX"    # I

    .prologue
    .line 5919
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    .line 5920
    return-void
.end method

.method public setDualEffectRightTopY(I)V
    .locals 0
    .param p1, "dualEffectRightTopY"    # I

    .prologue
    .line 5927
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    .line 5928
    return-void
.end method

.method public setDualTrackingGuideDialog(I)V
    .locals 4
    .param p1, "dualTrackingGuideDialog"    # I

    .prologue
    .line 5724
    const-string v1, "pref_dual_tracking_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5725
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualTrackingGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5727
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_dual_tracking_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5728
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5730
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setEULAEnable(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 4167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_eula_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    .line 4168
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4169
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEULAEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    .line 4171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_eula_key"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4175
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setEasyMode(Z)V
    .locals 4
    .param p1, "easyMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2323
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eq v0, p1, :cond_2

    .line 2324
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    .line 2327
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_1

    .line 2328
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2329
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 2330
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    .line 2333
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleEasyModeChanged(Z)V

    .line 2335
    :cond_2
    return-void
.end method

.method public setEffectMode(II)V
    .locals 5
    .param p1, "shootingMode"    # I
    .param p2, "effectMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 2507
    const/4 v0, 0x0

    .line 2508
    .local v0, "mCurrentEffect":I
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-ne v1, v4, :cond_1

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2512
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 2514
    if-eq v0, p2, :cond_0

    .line 2515
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 2519
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2522
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    goto :goto_0
.end method

.method public setEffectNotSupportedUHDPopup(I)V
    .locals 0
    .param p1, "effectNotSupportedUHDPopup"    # I

    .prologue
    .line 2531
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    .line 2532
    return-void
.end method

.method public setExposureValue(I)V
    .locals 3
    .param p1, "exposurevalue"    # I

    .prologue
    .line 2650
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 2651
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 2653
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2655
    :cond_0
    return-void
.end method

.method public setFaceDetectionMode(I)V
    .locals 4
    .param p1, "faceDetectionMode"    # I

    .prologue
    .line 4302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_face_detection_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    .line 4303
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    if-eq v1, p1, :cond_0

    .line 4304
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceDetectionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    .line 4306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_face_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4310
    const/16 v1, 0x55

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4312
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFaceZoomHelpTextDialog(I)V
    .locals 4
    .param p1, "faceZoomHelpTextDialog"    # I

    .prologue
    .line 5838
    const-string v1, "pref_face_zoom_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5839
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5841
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_face_zoom_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5842
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5844
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFastMotionSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 6731
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    if-eq v0, p1, :cond_0

    .line 6732
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFastMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6733
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    .line 6734
    const/16 v0, 0x170f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 6736
    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 6
    .param p1, "flashMode"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 2562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 2563
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2564
    :cond_0
    const/4 p1, 0x0

    .line 2566
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_2

    .line 2567
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 2569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2570
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2571
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2573
    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 2574
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v1, :cond_4

    .line 2575
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2582
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 2583
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-nez v1, :cond_6

    .line 2584
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 2588
    :cond_3
    :goto_1
    return-void

    .line 2576
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_5

    .line 2577
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    .line 2579
    :cond_5
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    .line 2585
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-ne v1, v4, :cond_3

    .line 2586
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1
.end method

.method public setFocusSelectMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 4112
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    if-eq v0, p1, :cond_1

    .line 4113
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusSelectMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    .line 4115
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 4119
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    .line 4122
    :cond_1
    return-void
.end method

.method public setFocusSelectModeInAutoMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 4104
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    .line 4105
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 5388
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_front_camera_shooting_mode_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5389
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5390
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCameraShootingModeOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5393
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5399
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setGPS(I)V
    .locals 3
    .param p1, "gps"    # I

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tag_current_location_camera"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 3780
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    if-eq v0, p1, :cond_0

    .line 3781
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 3783
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tag_current_location_camera"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3785
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3787
    :cond_0
    return-void
.end method

.method public setGolfDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 6844
    const-string v1, "pref_golf_direction"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 6845
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6846
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_golf_direction"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6847
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6849
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 4
    .param p1, "guideline"    # I

    .prologue
    .line 6677
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 6678
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    if-eq v1, p1, :cond_0

    .line 6679
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6680
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 6681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6684
    const/16 v1, 0x13

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 6686
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHelpMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 6750
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    if-eq v0, p1, :cond_0

    .line 6751
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    .line 6752
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHelpMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 6755
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 6788
    :cond_0
    :goto_0
    return-void

    .line 6759
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6760
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6761
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6762
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6763
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6764
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6765
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6766
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6767
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6768
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6769
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6770
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6771
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6773
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 6774
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    .line 6775
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 6776
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 6777
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 6778
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    .line 6779
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 6780
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 6781
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 6782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 6783
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 6784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 6785
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 6786
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0
.end method

.method public setLocationTagGuideDialog(I)V
    .locals 4
    .param p1, "locationTagGuideDialog"    # I

    .prologue
    .line 5631
    const-string v1, "pref_location_tag_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5632
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationTagGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5634
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_location_tag_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5635
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5637
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .param p1, "lowBattery"    # Z

    .prologue
    .line 2595
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    .line 2596
    return-void
.end method

.method public setMaxRecordingSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 2107
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 2108
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2311
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 2312
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 2314
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2316
    :cond_0
    return-void
.end method

.method public setNetWork(I)V
    .locals 6
    .param p1, "network"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3732
    const/4 v0, 0x1

    .line 3734
    .local v0, "b":Z
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3735
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v0

    .line 3736
    :cond_0
    if-eqz v0, :cond_3

    move v5, v3

    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 3737
    iget v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v5, p1, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3738
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v5

    if-nez v0, :cond_4

    :goto_1
    invoke-interface {v5, v3}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 3739
    const/16 v3, 0x2a

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3744
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v5, "pref_camera_network_key"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 3745
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_2

    .line 3746
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 3748
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3749
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_network_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3750
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3752
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    :cond_3
    move v5, v4

    .line 3736
    goto :goto_0

    :cond_4
    move v3, v4

    .line 3738
    goto :goto_1

    .line 3741
    :catch_0
    move-exception v1

    .line 3742
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setOnDeviceHelpScreen(Z)V
    .locals 5
    .param p1, "onDeviceHelpScreen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 6034
    if-ne p1, v2, :cond_0

    .line 6035
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 6040
    .local v1, "values":Landroid/content/ContentValues;
    :goto_0
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6041
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6042
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6043
    return-void

    .line 6037
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public setOutFocusShotGuideDialog(I)V
    .locals 4
    .param p1, "outFocusShotGuideDialog"    # I

    .prologue
    .line 5737
    const-string v1, "pref_out_focus_shot_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5738
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutFocusShotGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5740
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_out_focus_shot_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5743
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setOutdoorVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 4066
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 4067
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 4069
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4071
    if-nez p1, :cond_1

    .line 4072
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 4077
    :cond_0
    :goto_0
    return-void

    .line 4074
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setPreviewFileReceived(I)V
    .locals 5
    .param p1, "previewFileReceived"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3755
    const/4 v0, 0x1

    .line 3756
    .local v0, "b":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_1

    .line 3769
    :cond_0
    :goto_0
    return-void

    .line 3759
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3760
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z

    move-result v0

    .line 3761
    :cond_2
    if-eqz v0, :cond_3

    move v4, v2

    :goto_1
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    .line 3762
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    if-eq v4, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3763
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v4

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v4, v2}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 3764
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3766
    :catch_0
    move-exception v1

    .line 3767
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    move v4, v3

    .line 3761
    goto :goto_1

    :cond_4
    move v2, v3

    .line 3763
    goto :goto_2
.end method

.method public setQuickAccessDialog(I)V
    .locals 4
    .param p1, "quickAccessDialog"    # I

    .prologue
    .line 5763
    const-string v1, "pref_quick_access_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5764
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setQuickAccessDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5766
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_quick_access_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5769
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setQuickAccessMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 4133
    return-void
.end method

.method public setRemoteViewFinderLaunchEffectDownloadGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderLaunchEffectDownloadGuideDialog"    # I

    .prologue
    .line 5671
    const-string v1, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5672
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchEffectDownloadGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5677
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchEffectGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderLaunchEffectGuideDialog"    # I

    .prologue
    .line 5657
    const-string v1, "pref_remote_view_finder_launch_effect_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5658
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchEffectGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5660
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_launch_effect_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5661
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5663
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchGalleryGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderLaunchGalleryGuideDialog"    # I

    .prologue
    .line 5685
    const-string v1, "pref_remote_view_finder_launch_gallery_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5686
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchGalleryGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5688
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_launch_gallery_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5691
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchHelpGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderLaunchHelpGuideDialog"    # I

    .prologue
    .line 5698
    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5699
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchHelpGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5701
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5704
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewFinderResetCameraGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderResetCameraGuideDialog"    # I

    .prologue
    .line 5711
    const-string v1, "pref_remote_view_finder_reset_camera_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5712
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchHelpGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5714
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_reset_camera_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5717
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewFinderWifiDirectGuideDialog(I)V
    .locals 4
    .param p1, "remoteViewFinderWifiDirectGuideDialog"    # I

    .prologue
    .line 5644
    const-string v1, "pref_remote_view_finder_wifi_direct_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5645
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderWifiDirectGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5647
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_remote_view_finder_wifi_direct_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5650
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRemoteViewfinderMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/16 v3, 0x63

    .line 3688
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    if-eq v0, p1, :cond_1

    .line 3689
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteViewfinderMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    if-nez p1, :cond_2

    .line 3692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setWifiP2pDisabled()V

    .line 3694
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToSupportFullOrientation()V

    .line 3695
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restoreNfcState()V

    .line 3701
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    .line 3702
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3704
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xbb9

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3706
    :cond_1
    return-void

    .line 3697
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3698
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setIsWifiDirectRestore(Z)V

    goto :goto_0
.end method

.method public setRequestedRecordingSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 2091
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 2092
    return-void
.end method

.method public setReview(I)V
    .locals 4
    .param p1, "review"    # I

    .prologue
    .line 3639
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 3640
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 3641
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 3643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3644
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3646
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3648
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSaveRichtone(I)V
    .locals 4
    .param p1, "saveRichtone"    # I

    .prologue
    .line 6496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_save_richtone_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    .line 6497
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    if-eq v1, p1, :cond_0

    .line 6498
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSaveRichtone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    .line 6500
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6501
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6502
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6503
    const/16 v1, 0x22

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 6505
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .param p1, "sceneMode"    # I

    .prologue
    .line 2539
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 2540
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 2542
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 2544
    :cond_0
    return-void
.end method

.method public setSecureMode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4043
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    if-eq v0, p1, :cond_2

    .line 4044
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecureMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    .line 4046
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    if-eqz v0, :cond_2

    .line 4047
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4048
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4049
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    .line 4052
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 4053
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 4059
    :cond_2
    :goto_0
    return-void

    .line 4055
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto :goto_0
.end method

.method public setSelfFlip(I)V
    .locals 4
    .param p1, "flip"    # I

    .prologue
    .line 4087
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 4088
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    if-eq v1, p1, :cond_0

    .line 4089
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 4091
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4092
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4093
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4095
    const/16 v1, 0x26

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4097
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSettingValuesAsDefault()V
    .locals 1

    .prologue
    .line 1540
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    .line 1544
    return-void

    .line 1540
    nop

    :array_0
    .array-data 4
        0x2
        0xbb8
        0x7
        0x9
        0x12
        0x23
        0xe
        0xbbc
        0x170e
        0x170f
    .end array-data
.end method

.method public varargs setSettingValuesAsDefault([I)V
    .locals 9
    .param p1, "indices"    # [I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1547
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 1548
    .local v2, "index":I
    sparse-switch v2, :sswitch_data_0

    .line 1615
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in setSettingValuesAsDefault : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1551
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1552
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1559
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1554
    :cond_0
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_2

    .line 1562
    :sswitch_1
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 1563
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1566
    :sswitch_2
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 1567
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1570
    :sswitch_3
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 1571
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1574
    :sswitch_4
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 1575
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1578
    :sswitch_5
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 1579
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1582
    :sswitch_6
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1583
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1586
    :sswitch_7
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1587
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1590
    :sswitch_8
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 1591
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1594
    :sswitch_9
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1595
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1598
    :sswitch_a
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1599
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1602
    :sswitch_b
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    .line 1603
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1606
    :sswitch_c
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    .line 1607
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1610
    :sswitch_d
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    .line 1611
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1619
    .end local v2    # "index":I
    :cond_1
    return-void

    .line 1548
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xe -> :sswitch_8
        0x12 -> :sswitch_6
        0x23 -> :sswitch_7
        0x70 -> :sswitch_d
        0xbb8 -> :sswitch_9
        0xbbc -> :sswitch_a
        0x170e -> :sswitch_b
        0x170f -> :sswitch_c
    .end sparse-switch
.end method

.method public setShareMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/16 v3, 0x35

    const/4 v2, 0x1

    .line 3672
    const/4 v0, 0x0

    .line 3673
    .local v0, "updateThumbnail":Z
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    if-eq v1, p1, :cond_2

    .line 3674
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    if-eq v1, v2, :cond_0

    if-ne p1, v2, :cond_1

    .line 3675
    :cond_0
    const/4 v0, 0x1

    .line 3676
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    .line 3677
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3681
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3682
    if-ne v0, v2, :cond_2

    .line 3683
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    .line 3685
    :cond_2
    return-void
.end method

.method public setShootingMode(I)V
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2453
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    .line 2454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 2455
    return-void
.end method

.method public setShootingMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "shootingMode"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    .line 2448
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "shootingModeName":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    .line 2449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 2450
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 4
    .param p1, "shootingMode"    # I
    .param p2, "exiting"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2459
    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 2461
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2464
    const/4 p1, 0x0

    .line 2468
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isExternalShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2469
    :cond_2
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-ne v0, v3, :cond_4

    .line 2473
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->clearBurstProgressBar(I)V

    .line 2476
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 2477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2478
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 2486
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2487
    if-nez p2, :cond_5

    .line 2488
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 2490
    :cond_5
    return-void

    .line 2479
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2480
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0

    .line 2481
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2482
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    goto :goto_0

    .line 2484
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShootingModeGuideDialog(II)V
    .locals 3
    .param p1, "shootingmode"    # I
    .param p2, "shootingModeGuideDialog"    # I

    .prologue
    .line 5557
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 5558
    .local v1, "keyShootingMdoe":Ljava/lang/String;
    const-string v2, ""

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 5559
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5560
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5563
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setShortcutLayoutReset(I)V
    .locals 3
    .param p1, "shortcutLayoutReset"    # I

    .prologue
    .line 6743
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    if-eq v0, p1, :cond_0

    .line 6744
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShortcutLayoutReset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    .line 6747
    :cond_0
    return-void
.end method

.method public setSideBarMenuOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 5324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidebar_item_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    .line 5325
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5326
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideBarMenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    .line 5328
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5329
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_sidebar_item_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5332
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSideTouchGuideDialog(I)V
    .locals 4
    .param p1, "sideTouchGuideDialog"    # I

    .prologue
    .line 5754
    const-string v1, "pref_side_touch_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5755
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideTouchGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5757
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_side_touch_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5760
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSideTouchMode(I)V
    .locals 4
    .param p1, "sideTouchMode"    # I

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidetouch_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    .line 4279
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    .line 4280
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    if-eq v1, p1, :cond_0

    .line 4281
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideTouchMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    .line 4284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4285
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_sidetouch_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4288
    const/16 v1, 0x70

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4289
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleSideTouchModeChanged(I)V

    .line 4291
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSlowMotionSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 6719
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    if-eq v0, p1, :cond_0

    .line 6720
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlowMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    .line 6722
    const/16 v0, 0x170e

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 6724
    :cond_0
    return-void
.end method

.method public setSmartStablilizationDialog(I)V
    .locals 4
    .param p1, "smartStabilizationValue"    # I

    .prologue
    .line 5618
    const-string v1, "pref_smart_stabilization_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5619
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartStablilizationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5621
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_smart_stabilization_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5622
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5624
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSnapshotLimitationDialog(I)V
    .locals 4
    .param p1, "snapshotLimitationDialog"    # I

    .prologue
    .line 5851
    const-string v1, "pref_snap_shot_limitation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5852
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSnapshotLimitationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5854
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_snap_shot_limitation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5857
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSoundShotMode(I)V
    .locals 3
    .param p1, "SoundShotMode"    # I

    .prologue
    .line 6512
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    if-eq v0, p1, :cond_0

    .line 6513
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundShotMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6514
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    .line 6516
    :cond_0
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 6517
    return-void
.end method

.method public setStorage(I)V
    .locals 5
    .param p1, "storage"    # I

    .prologue
    const/16 v4, 0x16

    .line 3969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 3970
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 3971
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 3973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3974
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3975
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3977
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3978
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setDefaultStorageStatus()V

    .line 3979
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 3982
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    if-nez p1, :cond_1

    .line 3983
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3985
    :cond_1
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 2642
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    .line 2643
    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 2626
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    .line 2627
    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0
    .param p1, "lowTemperature"    # Z

    .prologue
    .line 2634
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    .line 2635
    return-void
.end method

.method public setTimer(I)V
    .locals 4
    .param p1, "timer"    # I

    .prologue
    const/4 v3, 0x6

    .line 2687
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 2688
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 2690
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2693
    :cond_0
    return-void
.end method

.method public setTorchLightStatus(I)V
    .locals 3
    .param p1, "torchLight"    # I

    .prologue
    .line 2603
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    if-eq v0, p1, :cond_0

    .line 2604
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2607
    :cond_0
    return-void
.end method

.method public setTouchToCapture(I)V
    .locals 4
    .param p1, "touchToCapture"    # I

    .prologue
    .line 4335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_touch_to_capture_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    .line 4336
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    if-eq v1, p1, :cond_0

    .line 4337
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTouchToCapture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    .line 4339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4340
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_touch_to_capture_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4342
    const/16 v1, 0x62

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4344
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .param p1, "orderString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1630
    .local p2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraSettings;->resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V

    .line 1631
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1633
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1634
    .local v0, "commandId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1636
    .end local v0    # "commandId":I
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 3719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3720
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_user_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3723
    const/16 v1, 0x29

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3724
    return-void
.end method

.method public setVideoAudiozoomDialog(I)V
    .locals 4
    .param p1, "videoAudiozoomDialog"    # I

    .prologue
    .line 5825
    const-string v1, "pref_video_audiozoom_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5826
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoAudiozoomDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5828
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_audiozoom_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5831
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVideoFhdResolutionDialog(I)V
    .locals 4
    .param p1, "FhdResolutionDialog"    # I

    .prologue
    .line 5812
    const-string v1, "pref_video_fhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5813
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoFhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5814
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5815
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_fhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5816
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5818
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVideoStabilisationDialog(I)V
    .locals 4
    .param p1, "videoStabilisationDialog"    # I

    .prologue
    .line 5776
    const-string v1, "pref_video_stabilisation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5777
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoStabilisationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5779
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_stabilisation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5780
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5782
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVideoUhdResolutionDialog(I)V
    .locals 4
    .param p1, "UhdResolutionDialog"    # I

    .prologue
    .line 5788
    const-string v1, "pref_video_uhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5789
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoUhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5791
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_uhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5792
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5794
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVideoWqhdResolutionDialog(I)V
    .locals 4
    .param p1, "WqhdResolutionDialog"    # I

    .prologue
    .line 5800
    const-string v1, "pref_video_wqhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5801
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoWqhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5803
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_wqhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5804
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5806
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVideocallPresetSelected(Z)V
    .locals 0
    .param p1, "mVideocallPresetSelected"    # Z

    .prologue
    .line 5299
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 5300
    return-void
.end method

.method public setViewMode(I)V
    .locals 4
    .param p1, "viewMode"    # I

    .prologue
    .line 4262
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    if-eq v1, p1, :cond_0

    .line 4263
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    .line 4265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4266
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4269
    const/16 v1, 0x138

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4271
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setVoiceGuide(I)V
    .locals 4
    .param p1, "voiceGuide"    # I

    .prologue
    const/16 v3, 0x59

    .line 4319
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    if-eq v0, p1, :cond_0

    .line 4320
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceGuide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    .line 4322
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4323
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4325
    :cond_0
    return-void
.end method

.method public setVolumeKeyAs(I)V
    .locals 4
    .param p1, "volumeKeyAs"    # I

    .prologue
    .line 3656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_volume_key_as"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    .line 3657
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    if-eq v1, p1, :cond_0

    .line 3658
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeKeyAs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    .line 3660
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3661
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_volume_key_as"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3663
    const/16 v1, 0x48

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3665
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 3
    .param p1, "whitebalance"    # I

    .prologue
    .line 3412
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 3413
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 3415
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3417
    :cond_0
    return-void
.end method

.method public declared-synchronized setWifiP2pDisabled()V
    .locals 3

    .prologue
    .line 6389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsWifiDirectRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6390
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 6391
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setIsWifiDirectRestore(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6393
    :cond_0
    monitor-exit p0

    return-void

    .line 6389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiP2pEnabled()V
    .locals 4

    .prologue
    .line 6366
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraSettings"

    const-string v1, "setWifiP2pEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6368
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 6369
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 6371
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    .line 6372
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 6373
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 6375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    .line 6377
    const-string v0, "CameraSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6386
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 6381
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6382
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6384
    :cond_4
    :try_start_2
    const-string v0, "CameraSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1, "zoomvalue"    # I

    .prologue
    .line 3828
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 3829
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 3831
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3833
    :cond_0
    return-void
.end method

.method public setZoomValueForced(I)V
    .locals 3
    .param p1, "zoomvalue"    # I

    .prologue
    .line 3836
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValueForced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 3838
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3839
    return-void
.end method

.method public setshowEditableShortcutGuideDialog(I)V
    .locals 4
    .param p1, "showEditableShortcutGuideDialog"    # I

    .prologue
    .line 5877
    const-string v1, "pref_editable_shortcut_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5878
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowEditableShortcutGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5880
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_editable_shortcut_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5881
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5883
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setshowLiveBeautyController(I)V
    .locals 4
    .param p1, "showLiveBeautyController"    # I

    .prologue
    .line 5890
    const-string v1, "pref_show_live_beauty_controller"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5891
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowLiveBeautyController "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5893
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_show_live_beauty_controller"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5894
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5896
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setshowTurnOnBurstShotHelpTextDialog(I)V
    .locals 4
    .param p1, "showTurnOnBurstShotHelpTextDialog"    # I

    .prologue
    .line 5864
    const-string v1, "pref_turn_on_burst_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5865
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowTurnOnBurstShotHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5866
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5867
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_turn_on_burst_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5868
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5870
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    .prologue
    .line 4373
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 4374
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4375
    monitor-exit v1

    .line 4376
    return-void

    .line 4375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCameraResolutionForDual()V
    .locals 5

    .prologue
    .line 3183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3190
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3191
    .local v1, "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3194
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3198
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3199
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3202
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3316
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3207
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3211
    const-string v2, "3264x1836"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3212
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3215
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3219
    const-string v2, "3264x1836"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3220
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3223
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3227
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3230
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3234
    const-string v2, "1072x1072"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3235
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3238
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3242
    const-string v2, "1072x1072"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3243
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3246
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3249
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3251
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3255
    const-string v2, "2448x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3256
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3259
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3263
    const-string v2, "2448x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3264
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3267
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3272
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 3273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3274
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3278
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3279
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3282
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3286
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3287
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3290
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3293
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3295
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3299
    const-string v2, "3264x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3300
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3303
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3307
    const-string v2, "3264x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3308
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3310
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3311
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3313
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public updateCameraResolutionForDualLiteShot()V
    .locals 5

    .prologue
    .line 3320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3321
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3323
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3327
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3328
    .local v1, "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3330
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3331
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3333
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3405
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 3334
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3336
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3340
    const-string v2, "3264x1836"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3341
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3344
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    .line 3348
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3351
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3353
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3355
    const-string v2, "1072x1072"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3356
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3358
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3359
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3362
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3363
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3364
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3368
    const-string v2, "2448x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3369
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3372
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3377
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 3378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3379
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3381
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3383
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3384
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3387
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3389
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3390
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3392
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3396
    const-string v2, "3264x2448"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 3397
    .restart local v1    # "resolutionID":I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 3399
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3400
    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 6882
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDualCameraSetting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6883
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 6892
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6893
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6894
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6895
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 6896
    return-void

    .line 6885
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6886
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    .line 6887
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6888
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    .line 6889
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6890
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public updateShootingModeWhenSwitchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1261
    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1304
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->validateShootingModeExistence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 1312
    :cond_3
    return-void

    .line 1263
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_0

    .line 1287
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1291
    :cond_6
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1297
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0

    .line 1292
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1293
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_1

    .line 1295
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_1
.end method
