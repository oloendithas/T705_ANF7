.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = null

.field public static AP_TEMP_PATH:Ljava/lang/String; = null

.field public static BASE_MODEL:Ljava/lang/String; = null

.field public static COMMON_GESTURE_WITH_FINGERHOVER:Z = false

.field public static COMMON_HW_VENDOR_CONFIG:Ljava/lang/String; = null

.field public static COMMON_REGION:Ljava/lang/String; = null

.field public static DISABLE_DYNAMIC_FPS:Z = false

.field public static DISPLAY_WQXGA:Z = false

.field public static DYNAMIC_ANALYSIS:Z = false

.field public static GMS_BUNDLING:Z = false

.field public static IS_ITALY_MODEL:Z = false

.field public static IS_KOR_MODEL:Z = false

.field public static IS_SCX15:Z = false

.field public static IS_TABLET:Z = false

.field public static MODEL_AGERA:Z = false

.field public static MODEL_BERLUTI:Z = false

.field public static MODEL_CHAGALL:Z = false

.field public static MODEL_D2:Z = false

.field public static MODEL_F_LTE:Z = false

.field public static MODEL_GARDA:Z = false

.field public static MODEL_H:Z = false

.field public static MODEL_HA:Z = false

.field public static MODEL_HEAT:Z = false

.field public static MODEL_HEATLTE:Z = false

.field public static MODEL_HF:Z = false

.field public static MODEL_J:Z = false

.field public static MODEL_JA:Z = false

.field public static MODEL_JF:Z = false

.field public static MODEL_JFVE:Z = false

.field public static MODEL_JF_REFRESH:Z = false

.field public static MODEL_JS01:Z = false

.field public static MODEL_K:Z = false

.field public static MODEL_KA:Z = false

.field public static MODEL_KAM:Z = false

.field public static MODEL_KF:Z = false

.field public static MODEL_KLIMT:Z = false

.field public static MODEL_KM:Z = false

.field public static MODEL_KQ:Z = false

.field public static MODEL_KS01:Z = false

.field public static MODEL_LT03:Z = false

.field public static MODEL_LT03_3GWIFI:Z = false

.field public static MODEL_LT03_LTE:Z = false

.field public static MODEL_M2:Z = false

.field public static MODEL_MARVELL_DEGAS:Z = false

.field public static MODEL_MATISSE:Z = false

.field public static MODEL_MEGA2_3G:Z = false

.field public static MODEL_MELIUS:Z = false

.field public static MODEL_MILLET:Z = false

.field public static MODEL_MILLET_ATT:Z = false

.field public static MODEL_MONDRIAN:Z = false

.field public static MODEL_MRVL_SYSFS:Z = false

.field public static MODEL_MS01_3G:Z = false

.field public static MODEL_PICASSO:Z = false

.field public static MODEL_PICASSO_3GWIFI:Z = false

.field public static MODEL_PICASSO_LTE:Z = false

.field public static MODEL_QUALCOMM_GOLDEN:Z = false

.field public static MODEL_QUALCOMM_LT02:Z = false

.field public static MODEL_SERRANO:Z = false

.field public static MODEL_SPREAD_KANAS:Z = false

.field public static MODEL_T:Z = false

.field public static MODEL_T0:Z = false

.field public static MODEL_TF:Z = false

.field public static MODEL_V1:Z = false

.field public static MODEL_V1_3GWIFI:Z = false

.field public static MODEL_V1_LTE:Z = false

.field public static MODEL_V2:Z = false

.field public static MODEL_V2_3GWIFI:Z = false

.field public static MODEL_V2_LTE:Z = false

.field public static PRODUCT_H:Z = false

.field public static PRODUCT_J:Z = false

.field public static REGION_CMCC:Z = false

.field public static REGION_CU:Z = false

.field public static REGION_JPN:Z = false

.field public static REGION_VZW:Z = false

.field public static SIOP_FILENAME:Ljava/lang/String; = null

.field public static SIOP_TYPE:Ljava/lang/String; = null

.field public static SSRM_BATTERY_COOLDOWN_ENABLE:Z = false

.field public static SSRM_FILENAME:Ljava/lang/String; = null

.field public static SSRM_HANGOUTS:Z = false

.field public static SSRM_LOW_BATTERY_LIMITATION:Z = false

.field public static SSRM_POWERSTRETCH:Z = false

.field public static SSRM_PST_ENABLE:Z = false

.field public static SSRM_STS_ENABLE:Z = false

.field public static SSRM_TOUCH_BUS_QOS_BOOSTER:Z = false

.field public static SSRM_TOUCH_REPORT_RATE_CHANGE:Z = false

.field public static SSRM_TOUCH_SEPARATION:Z = false

.field public static SSRM_TURBO_MODE_BOOSTER:Z = false

.field public static SSRM_VZW_COOLDOWN_ENABLE:Z = false

.field public static STATIC_ANALYSIS:Z = false

.field static final TAG:Ljava/lang/String; = "SSRMv2:Feature"

.field public static VENDOR_LSI:Z

.field public static VENDOR_MARVELL:Z

.field public static VENDOR_QUALCOMM:Z

.field public static VENDOR_SPREAD:Z

.field public static WLUC_SUPPORT:Z

.field public static sApTempPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 34
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 36
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 38
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 40
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 42
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 44
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 46
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 48
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 50
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_SCX15:Z

    .line 52
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 54
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 56
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 58
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 60
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 62
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    .line 64
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 66
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 68
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 70
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    .line 72
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KM:Z

    .line 74
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 76
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    .line 78
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 80
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 82
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    .line 84
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    .line 86
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 88
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 90
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 92
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MELIUS:Z

    .line 94
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_SERRANO:Z

    .line 96
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_QUALCOMM_LT02:Z

    .line 98
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_QUALCOMM_GOLDEN:Z

    .line 100
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_SPREAD_KANAS:Z

    .line 102
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 104
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 106
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 108
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 110
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 112
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 114
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 116
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 118
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KLIMT:Z

    .line 120
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 122
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    .line 124
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    .line 126
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    .line 128
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    .line 130
    sput-boolean v7, Lcom/android/server/ssrm/Feature;->MODEL_MILLET_ATT:Z

    .line 132
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    .line 134
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_BERLUTI:Z

    .line 136
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MEGA2_3G:Z

    .line 138
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    .line 140
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 142
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 144
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 146
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    .line 148
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 150
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    .line 152
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HEATLTE:Z

    .line 154
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    .line 156
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    .line 158
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MARVELL_DEGAS:Z

    .line 160
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_AGERA:Z

    .line 162
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_GARDA:Z

    .line 164
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_M2:Z

    .line 166
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 168
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    .line 170
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    .line 172
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 174
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    .line 176
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    .line 178
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    .line 180
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    .line 182
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    .line 184
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    .line 186
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    .line 188
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    .line 190
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->VENDOR_LSI:Z

    .line 192
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->VENDOR_MARVELL:Z

    .line 194
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->VENDOR_SPREAD:Z

    .line 196
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->WLUC_SUPPORT:Z

    .line 198
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    .line 202
    :try_start_0
    const-string v5, "com.android.server.SsrmService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 205
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "BASE_MODEL"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 206
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 208
    const-string v5, "SIOP_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 209
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 211
    const-string v5, "SSRM_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 212
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 214
    const-string v5, "AIR_VIEW_PROVIDER_NAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 215
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 217
    const-string v5, "DISABLE_DYNAMIC_FPS"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 218
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 220
    const-string v5, "COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 221
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 223
    const-string v5, "COMMON_REGION"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 224
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 226
    const-string v5, "COMMON_HW_VENDOR_CONFIG"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 227
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 229
    const-string v5, "WLUC_SUPPORT"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 230
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->WLUC_SUPPORT:Z

    .line 232
    const-string v5, "GMS_BUNDLING"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 233
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    .line 235
    const-string v5, "KOR"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 237
    const-string/jumbo v5, "scx15"

    const-string v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_SCX15:Z

    .line 239
    const-string v5, "Combination"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    .line 241
    const-string v5, "Strawberry"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_LSI:Z

    .line 243
    const-string v5, "Maple"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_MARVELL:Z

    .line 245
    const-string v5, "Sangria"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_SPREAD:Z

    .line 247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 249
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 251
    const-string v5, "SIOPS4ITALY"

    sget-object v8, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    const-string/jumbo v5, "ssrm_jf_italy"

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 253
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 257
    :cond_0
    const-string v5, "ha"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 260
    :cond_1
    const-string v5, "hf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 263
    :cond_2
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_4

    .line 264
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 267
    :cond_4
    const-string v5, "kam"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 268
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    .line 271
    :cond_5
    const-string v5, "ka"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 272
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 274
    :cond_6
    const-string v5, "kf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 277
    :cond_7
    const-string v5, "kq"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 278
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    .line 280
    :cond_8
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v5, :cond_a

    .line 281
    :cond_9
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 283
    :cond_a
    const-string/jumbo v5, "tf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 284
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    .line 286
    :cond_b
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v5, :cond_c

    .line 287
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    .line 289
    :cond_c
    const-string v5, "ja"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 290
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 292
    :cond_d
    const-string v5, "jf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 293
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 295
    :cond_e
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_10

    .line 296
    :cond_f
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 298
    :cond_10
    const-string v5, "heat3g"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 299
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    .line 301
    :cond_11
    const-string v5, "garda"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 302
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_GARDA:Z

    .line 304
    :cond_12
    const-string v5, "heatlte"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 305
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HEATLTE:Z

    .line 308
    :cond_13
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v5, :cond_42

    .line 309
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_14

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 310
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 312
    :cond_14
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 313
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 315
    :cond_15
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-nez v5, :cond_16

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-eqz v5, :cond_4b

    :cond_16
    move v5, v7

    :goto_0
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 317
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 318
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 320
    :cond_17
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_18

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 321
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 323
    :cond_18
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_19

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-eqz v5, :cond_4c

    :cond_19
    move v5, v7

    :goto_1
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 325
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 326
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 328
    :cond_1a
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 329
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 331
    :cond_1b
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-nez v5, :cond_1c

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v5, :cond_4d

    :cond_1c
    move v5, v7

    :goto_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 333
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 334
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    .line 336
    :cond_1d
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 337
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    .line 339
    :cond_1e
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    if-nez v5, :cond_1f

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    if-eqz v5, :cond_4e

    :cond_1f
    move v5, v7

    :goto_3
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    .line 341
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "millet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 342
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    .line 345
    :cond_20
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "att"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 346
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET_ATT:Z

    .line 349
    :cond_21
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "matisse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 350
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    .line 353
    :cond_22
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "berluti"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 354
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_BERLUTI:Z

    .line 357
    :cond_23
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mega23g"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 358
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MEGA2_3G:Z

    .line 361
    :cond_24
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_25

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "chagall"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 362
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 365
    :cond_25
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_26

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "klimt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 366
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KLIMT:Z

    .line 369
    :cond_26
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_27

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mondrian"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 370
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 373
    :cond_27
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_28

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "flte"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 374
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 377
    :cond_28
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_29

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ks01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 378
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 381
    :cond_29
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jfve"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 382
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    .line 385
    :cond_2a
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_km_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 386
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KM:Z

    .line 389
    :cond_2b
    const-string v5, "VZW"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 390
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 392
    :cond_2c
    const-string v5, "CHU"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 393
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    .line 395
    :cond_2d
    const-string v5, "CHM"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 396
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    .line 398
    :cond_2e
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jpn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 399
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    .line 401
    :cond_2f
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "js01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 402
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 405
    :cond_30
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ms013g"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 406
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 409
    :cond_31
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_32

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "refresh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 410
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 413
    :cond_32
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "d2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 414
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    .line 417
    :cond_33
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "melius"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 418
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MELIUS:Z

    .line 421
    :cond_34
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_jm_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 422
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_SERRANO:Z

    .line 425
    :cond_35
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    if-eqz v5, :cond_36

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt02"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 426
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_QUALCOMM_LT02:Z

    .line 429
    :cond_36
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    if-eqz v5, :cond_37

    const-string v5, "golden"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 430
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_QUALCOMM_GOLDEN:Z

    .line 433
    :cond_37
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_SPREAD:Z

    if-eqz v5, :cond_38

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_kanas_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 434
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_SPREAD_KANAS:Z

    .line 437
    :cond_38
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    if-eqz v5, :cond_39

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "m2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 438
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_M2:Z

    .line 441
    :cond_39
    const-string/jumbo v5, "t0"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_t0_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 442
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    .line 445
    :cond_3a
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mrvl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 446
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    .line 449
    :cond_3b
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->VENDOR_MARVELL:Z

    if-eqz v5, :cond_3c

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "degas"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 450
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MARVELL_DEGAS:Z

    .line 453
    :cond_3c
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "agera"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 454
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_AGERA:Z

    .line 457
    :cond_3d
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ja"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 458
    :cond_3e
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    .line 461
    :cond_3f
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_ha_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_hf_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 462
    :cond_40
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    .line 465
    :cond_41
    const-string/jumbo v5, "tablet"

    const-string v8, "ro.build.characteristics"

    const-string v9, "default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    .line 469
    :cond_42
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/sec/sec-thermistor/temperature"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, "f1":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v4, "f2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 473
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 474
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    .line 482
    :goto_4
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v5, :cond_43

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    if-eqz v5, :cond_51

    .line 483
    :cond_43
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :goto_5
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_44

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_44

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MELIUS:Z

    if-eqz v5, :cond_52

    :cond_44
    move v5, v7

    :goto_6
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 495
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-nez v5, :cond_45

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MELIUS:Z

    if-eqz v5, :cond_53

    :cond_45
    move v5, v7

    :goto_7
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    .line 497
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    .line 499
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v5, :cond_46

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    if-eqz v5, :cond_54

    :cond_46
    move v5, v7

    :goto_8
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_REPORT_RATE_CHANGE:Z

    .line 501
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_47

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_47

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-eqz v5, :cond_55

    :cond_47
    move v5, v7

    :goto_9
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_POWERSTRETCH:Z

    .line 504
    sput-boolean v7, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    .line 506
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    .line 508
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v5, :cond_48

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    if-eqz v5, :cond_56

    :cond_48
    move v5, v7

    :goto_a
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    .line 510
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    if-nez v5, :cond_57

    move v5, v7

    :goto_b
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    .line 512
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    .line 514
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_49

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_49

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v5, :cond_4a

    :cond_49
    move v6, v7

    :cond_4a
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->SSRM_LOW_BATTERY_LIMITATION:Z

    return-void

    .restart local v2    # "f":Ljava/lang/reflect/Field;
    :cond_4b
    move v5, v6

    .line 315
    goto/16 :goto_0

    :cond_4c
    move v5, v6

    .line 323
    goto/16 :goto_1

    :cond_4d
    move v5, v6

    .line 331
    goto/16 :goto_2

    :cond_4e
    move v5, v6

    .line 339
    goto/16 :goto_3

    .line 475
    .restart local v3    # "f1":Ljava/io/File;
    .restart local v4    # "f2":Ljava/io/File;
    :cond_4f
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 476
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 477
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 487
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SSRMv2:Feature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "f1":Ljava/io/File;
    .restart local v4    # "f2":Ljava/io/File;
    :cond_50
    const/4 v5, 0x0

    :try_start_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    goto/16 :goto_4

    .line 485
    :cond_51
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :cond_52
    move v5, v6

    .line 492
    goto/16 :goto_6

    :cond_53
    move v5, v6

    .line 495
    goto/16 :goto_7

    :cond_54
    move v5, v6

    .line 499
    goto/16 :goto_8

    :cond_55
    move v5, v6

    .line 501
    goto/16 :goto_9

    :cond_56
    move v5, v6

    .line 508
    goto :goto_a

    :cond_57
    move v5, v6

    .line 510
    goto :goto_b
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
