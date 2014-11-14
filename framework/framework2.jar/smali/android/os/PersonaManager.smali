.class public Landroid/os/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACTION_SHORTCUT_REINSTATE:Ljava/lang/String; = "com.sec.knox.shortcutReinstate"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field private static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "persona_device_policy"

.field public static final PERSONA_FILE_SYSTEM_SERVICE:Ljava/lang/String; = "persona_file_system"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_LOCK_SETTINGS_SERVICE:Ljava/lang/String; = "persona_lock_settings"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_STATE_MANAGER_SERVICE:Ljava/lang/String; = "persona_state_manager"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_VALIDATION_SUCCESS:I

.field private static mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field public static m_bIsKnoxInfoInitialized:Z

.field private static personaManager:Landroid/os/PersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 182
    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 213
    const-string v0, "PersonaManager"

    sput-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    .line 217
    sput-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 218
    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 219
    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 230
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.hearingadjust"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 243
    sput-boolean v3, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    .line 248
    iput-object p1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    .line 249
    return-void
.end method

.method private static containerExists(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1777
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1788
    :cond_9
    :goto_9
    return v3

    .line 1780
    :cond_a
    const-string v0, ":"

    .line 1781
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1782
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_13
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 1783
    aget-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1784
    const/4 v3, 0x1

    goto :goto_9

    .line 1782
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1070
    if-nez p1, :cond_4

    .line 1071
    const/4 v3, 0x0

    .line 1102
    :cond_3
    :goto_3
    return-object v3

    .line 1074
    :cond_4
    const/4 v3, 0x0

    .line 1078
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_5
    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1079
    const-string/jumbo v5, "rcp"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 1081
    .local v2, "rcpm":Landroid/os/RCPManager;
    if-eqz v2, :cond_3

    .line 1082
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    .line 1085
    .end local v2    # "rcpm":Landroid/os/RCPManager;
    :cond_24
    const-string v5, "MoveTo"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1086
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_5a

    .line 1088
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_37
    new-instance v1, Landroid/content/Intent;

    const-string v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1090
    const-string v5, "launchFromPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1095
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_58} :catch_5f

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_3

    .line 1098
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_5a
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1098
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Landroid/os/Bundle;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_5f
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_5b
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 6

    .prologue
    .line 818
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_3f

    .line 819
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 820
    :try_start_7
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_3e

    .line 821
    const/4 v1, 0x0

    .line 822
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_67

    .line 825
    :try_start_13
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 828
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 829
    const-string v1, "2.0"

    .line 834
    :cond_2d
    :goto_2d
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_35
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportCallerInfo"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3e} :catch_58
    .catchall {:try_start_13 .. :try_end_3e} :catchall_67

    .line 845
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_67

    .line 847
    :cond_3f
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 830
    :cond_42
    :try_start_42
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 831
    const-string v1, "1.0"

    goto :goto_2d

    .line 836
    :cond_4d
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_57} :catch_58
    .catchall {:try_start_42 .. :try_end_57} :catchall_67

    goto :goto_35

    .line 839
    :catch_58
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 989
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 990
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 994
    :cond_7
    :try_start_7
    const-string v1, "2.0"

    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 995
    const-string v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_20

    .line 1001
    :cond_1d
    :goto_1d
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 997
    :catch_20
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .line 928
    const/4 v1, 0x0

    .line 930
    .local v1, "userid":I
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_a

    .line 931
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 934
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 939
    :try_start_e
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    sget-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v2, :cond_57

    .line 942
    if-lt v1, v5, :cond_44

    .line 943
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxMode"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockExternalSD"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockBluetoothMenu"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSamsungAccountBlocked"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_44
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 950
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_54
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 959
    :cond_57
    const-string/jumbo v2, "true"

    sget-object v3, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 960
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 961
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v2, v1}, Landroid/os/PersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 965
    :cond_75
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 966
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-lt v2, v5, :cond_b7

    .line 967
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_8d
    :goto_8d
    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 974
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 975
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a5} :catch_b2

    .line 984
    :cond_a5
    :goto_a5
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 952
    :cond_a8
    :try_start_a8
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b1} :catch_b2

    goto :goto_54

    .line 980
    :catch_b2
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a5

    .line 969
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b7
    :try_start_b7
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 977
    :cond_c1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ca} :catch_b2

    goto :goto_a5
.end method

.method public static isCACEnabled(I)Z
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 1641
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v1, :cond_a

    .line 1642
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 1645
    :cond_a
    :try_start_a
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1649
    :goto_10
    return v1

    .line 1646
    :catch_11
    move-exception v0

    .line 1647
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isCACEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1649
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 909
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 912
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 923
    :cond_18
    :goto_18
    return v3

    .line 914
    :cond_19
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 915
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_18

    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_18

    .line 919
    :try_start_28
    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2f

    move-result v3

    goto :goto_18

    .line 920
    :catch_2f
    move-exception v1

    .line 921
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1106
    if-eqz p0, :cond_14

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "null"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1114
    :cond_14
    :goto_14
    return v4

    .line 1109
    :cond_15
    sget-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_19
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 1110
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1109
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1114
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_26
    const/4 v4, 0x1

    goto :goto_14
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 851
    if-eqz p2, :cond_e

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 904
    :goto_d
    return v1

    .line 855
    :cond_e
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 856
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 857
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_38

    .line 858
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 859
    :try_start_28
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_37

    .line 860
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 862
    :cond_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_5f

    .line 865
    :cond_38
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_51

    .line 866
    const-class v3, Landroid/os/PersonaPolicyManager;

    monitor-enter v3

    .line 867
    :try_start_3f
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_50

    .line 868
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 870
    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_62

    .line 873
    :cond_51
    const/16 v1, 0x64

    if-lt p3, v1, :cond_121

    .line 874
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v2

    .line 875
    goto :goto_d

    .line 862
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 870
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    .line 876
    :cond_65
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 877
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    goto :goto_d

    .line 878
    :cond_74
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 879
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    goto :goto_d

    .line 880
    :cond_83
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 881
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_d

    .line 882
    :cond_94
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 883
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    goto/16 :goto_d

    .line 884
    :cond_a4
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 885
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 886
    :cond_b4
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 887
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 888
    :cond_c5
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 889
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 890
    :cond_d5
    const-string v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 891
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 892
    :cond_e5
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 893
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 894
    :cond_f5
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 895
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 896
    :cond_105
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 897
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_d

    .line 898
    :cond_116
    const-string v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    move v1, v2

    .line 899
    goto/16 :goto_d

    .line 904
    :cond_121
    const/4 v1, 0x1

    goto/16 :goto_d
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1006
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    if-nez p2, :cond_a4

    .line 1009
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1011
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1012
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1013
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1015
    .local v5, "personaNames":[Ljava/lang/String;
    const-string v9, "action"

    const-string v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {p0, v1}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1020
    if-eqz v8, :cond_54

    .line 1021
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1022
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1023
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1025
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1026
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1027
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1031
    :cond_54
    :try_start_54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1033
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_99

    array-length v9, v4

    if-lez v9, :cond_99

    .line 1036
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5f
    array-length v9, v4

    if-ge v3, v9, :cond_70

    .line 1037
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1040
    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1041
    .local v7, "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8c

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8c

    .line 1043
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_8c
    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMode()Z

    move-result v9

    if-eqz v9, :cond_99

    .line 1046
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_99
    const-string v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9e} :catch_9f

    .line 1066
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_9e
    :goto_9e
    return-void

    .line 1051
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v4    # "personaIds":[I
    .restart local v5    # "personaNames":[Ljava/lang/String;
    .restart local v6    # "personaTypes":[Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :catch_9f
    move-exception v2

    .line 1052
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9e

    .line 1055
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_a4
    const/16 v9, 0x64

    if-lt p2, v9, :cond_9e

    .line 1057
    :try_start_a8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1058
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9e

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9e

    .line 1060
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c4} :catch_c5

    goto :goto_9e

    .line 1062
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_c5
    move-exception v2

    .line 1063
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9e
.end method


# virtual methods
.method public addAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .registers 7
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1399
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1401
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1406
    :cond_d
    :goto_d
    return-void

    .line 1402
    :catch_e
    move-exception v0

    .line 1403
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 762
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 764
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 769
    :goto_a
    return-object v1

    .line 765
    :catch_b
    move-exception v0

    .line 766
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1449
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1451
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1456
    :cond_9
    :goto_9
    return-void

    .line 1452
    :catch_a
    move-exception v0

    .line 1453
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v1, 0x0

    .line 1346
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1348
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1353
    :cond_b
    :goto_b
    return v1

    .line 1349
    :catch_c
    move-exception v0

    .line 1350
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public adminUnLockPersona(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1360
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->adminUnLockPersona(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1365
    :cond_b
    :goto_b
    return v1

    .line 1361
    :catch_c
    move-exception v0

    .line 1362
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V
    .registers 6
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 1583
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1585
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1590
    :cond_d
    :goto_d
    return-void

    .line 1586
    :catch_e
    move-exception v0

    .line 1587
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 1152
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1154
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_46

    move-result v2

    .line 1158
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_45
    return v2

    .line 1155
    :catch_46
    move-exception v1

    .line 1156
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    const/4 v2, -0x1

    goto :goto_45
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_1d

    .line 287
    :try_start_4
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/os/IPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    move-result v0

    .line 292
    :goto_14
    return v0

    .line 288
    :catch_15
    move-exception v9

    .line 289
    .local v9, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not create a user"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v9    # "re":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1164
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1166
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_32

    move-result v2

    .line 1170
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_31
    return v2

    .line 1167
    :catch_32
    move-exception v1

    .line 1168
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public disablePersonaKeyGuard(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1288
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1290
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1296
    :goto_22
    return v1

    .line 1292
    :catch_23
    move-exception v0

    .line 1293
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public enablePersonaKeyGuard(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1304
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1306
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1312
    :goto_22
    return v1

    .line 1308
    :catch_23
    move-exception v0

    .line 1309
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1312
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public exists(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 564
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_29

    .line 566
    :try_start_4
    const-string/jumbo v2, "sys.knox.exists"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 569
    invoke-static {v1, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    .line 576
    .end local v1    # "value":Ljava/lang/String;
    :goto_19
    return v2

    .line 571
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1a
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21

    move-result v2

    goto :goto_19

    .line 572
    .end local v1    # "value":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 573
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get user info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_29
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 639
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/PersonaManager;->switchPersona(I)Z

    .line 645
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1175
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 1177
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getAdminUidForPersona(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 1183
    :goto_11
    return v1

    .line 1179
    :catch_12
    move-exception v0

    .line 1180
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1432
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_17

    .line 1434
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v1

    .line 1439
    :goto_e
    return-object v1

    .line 1435
    :catch_f
    move-exception v0

    .line 1436
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 10
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 779
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "PM.getCallerInfo()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v5, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcp"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 782
    .local v1, "rcpm":Landroid/os/RCPManager;
    if-nez v1, :cond_1f

    .line 783
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_1e
    return-object v4

    .line 787
    :cond_1f
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 788
    if-nez v0, :cond_2d

    .line 789
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 794
    :cond_2d
    :try_start_2d
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 795
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_49} :catch_4b

    move-object v4, v3

    .line 796
    goto :goto_1e

    .line 797
    :catch_4b
    move-exception v2

    .line 798
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t complete call to getCallerInfo , inside PersonaManager with exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public getCurrentPersonaForUser(I)I
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 453
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_a

    .line 455
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getCurrentPersonaForUser(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result p1

    .line 460
    .end local p1    # "userId":I
    :cond_a
    :goto_a
    return p1

    .line 456
    .restart local p1    # "userId":I
    :catch_b
    move-exception v0

    .line 457
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1570
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1575
    :goto_a
    return-object v1

    .line 1571
    :catch_b
    move-exception v0

    .line 1572
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1575
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getKeyguardShowState(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1764
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1766
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardShowState for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKeyguardShowState(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1772
    :goto_22
    return v1

    .line 1768
    :catch_23
    move-exception v0

    .line 1769
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getLastShortcutState(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1796
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1798
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastShortcutState for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getLastShortcutState(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1804
    :goto_22
    return v1

    .line 1800
    :catch_23
    move-exception v0

    .line 1801
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getLastShortcutState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getNormalizedState(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 649
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 651
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getNormalizedState(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 656
    :goto_a
    return v1

    .line 652
    :catch_b
    move-exception v0

    .line 653
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .registers 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1617
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1622
    :goto_a
    return-object v1

    .line 1618
    :catch_b
    move-exception v0

    .line 1619
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getParentId(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 410
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 412
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getParentId(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 417
    :goto_a
    return v1

    .line 413
    :catch_b
    move-exception v0

    .line 414
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getParentUserForCurrentPersona()I
    .registers 4

    .prologue
    .line 370
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 372
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 377
    :goto_a
    return v1

    .line 373
    :catch_b
    move-exception v0

    .line 374
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPasswordHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1626
    const/4 v1, 0x0

    .line 1627
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_12

    .line 1629
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v1

    .line 1635
    :cond_12
    :goto_12
    return-object v1

    .line 1631
    :catch_13
    move-exception v0

    .line 1632
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getPersonaBackgroundTime(I)J
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1119
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1121
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 1126
    :goto_a
    return-wide v1

    .line 1122
    :catch_b
    move-exception v0

    .line 1123
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getPersonaBackgroundTime , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "personaHandle"    # I

    .prologue
    .line 535
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 537
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 542
    :goto_a
    return-object v1

    .line 538
    :catch_b
    move-exception v0

    .line 539
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1138
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 1140
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v1

    .line 1146
    :goto_11
    return-object v1

    .line 1142
    :catch_12
    move-exception v0

    .line 1143
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getPersonaIds()[I
    .registers 4

    .prologue
    .line 1370
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1372
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPersonaIds()[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1377
    :goto_a
    return-object v1

    .line 1373
    :catch_b
    move-exception v0

    .line 1374
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1377
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 399
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 401
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 406
    :goto_a
    return-object v1

    .line 402
    :catch_b
    move-exception v0

    .line 403
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 500
    :goto_6
    return-object v1

    .line 498
    :catch_7
    move-exception v0

    .line 499
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    const-string v1, ""

    goto :goto_6
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 742
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_8c

    .line 744
    const-string/jumbo v0, "persona_state_manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 745
    new-instance v0, Landroid/os/PersonaStateManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_state_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaStateManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V

    .line 757
    :goto_37
    return-object v0

    .line 747
    :cond_38
    const-string/jumbo v0, "persona_file_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 748
    new-instance v0, Landroid/os/PersonaFileManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_file_system"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaFileManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V

    goto :goto_37

    .line 750
    :cond_54
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 751
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    goto :goto_37

    .line 753
    :cond_70
    const-string/jumbo v0, "persona_lock_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 754
    new-instance v0, Landroid/os/PersonaLockSettingsManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V

    goto :goto_37

    .line 757
    :cond_8c
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public getPersonaState(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 590
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 592
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaState(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 597
    :goto_a
    return v1

    .line 593
    :catch_b
    move-exception v0

    .line 594
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 475
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 477
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 482
    :goto_a
    return-object v1

    .line 478
    :catch_b
    move-exception v0

    .line 479
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const-string v1, ""

    goto :goto_a
.end method

.method public getPersonas()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_14

    .line 347
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result-object v1

    .line 352
    :goto_b
    return-object v1

    .line 348
    :catch_c
    move-exception v0

    .line 349
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getPersonas(Z)Ljava/util/List;
    .registers 5
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 386
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 391
    :goto_a
    return-object v1

    .line 387
    :catch_b
    move-exception v0

    .line 388
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .registers 6
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 554
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 559
    :goto_a
    return-object v1

    .line 555
    :catch_b
    move-exception v0

    .line 556
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_14

    .line 361
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result-object v1

    .line 366
    :goto_b
    return-object v1

    .line 362
    :catch_c
    move-exception v0

    .line 363
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getPhoneCaller()I
    .registers 4

    .prologue
    .line 431
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 433
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPhoneCaller()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 438
    :goto_a
    return v1

    .line 434
    :catch_b
    move-exception v0

    .line 435
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 6

    .prologue
    .line 805
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 807
    .local v1, "rcpm":Landroid/os/RCPManager;
    const/4 v0, 0x0

    .line 808
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_33

    .line 809
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 810
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 814
    :goto_32
    return-object v2

    .line 813
    :cond_33
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public getScreenOffTime(I)J
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 1519
    const-wide/16 v1, 0x1388

    .line 1520
    .local v1, "screenOffTime":J
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v3, :cond_b

    .line 1522
    :try_start_6
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getScreenOffTime(I)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1527
    :cond_b
    :goto_b
    return-wide v1

    .line 1523
    :catch_c
    move-exception v0

    .line 1524
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getShortcutMode(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1333
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_3b

    .line 1335
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, getShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_31} :catch_33

    move-result v1

    .line 1341
    :goto_32
    return v1

    .line 1337
    :catch_33
    move-exception v0

    .line 1338
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1341
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .registers 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1214
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result-object v1

    .line 1220
    :goto_22
    return-object v1

    .line 1216
    :catch_23
    move-exception v0

    .line 1217
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public handleHomeShow()Z
    .registers 4

    .prologue
    .line 1275
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->handleHomeShow()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    .line 1280
    :goto_d
    return v1

    .line 1277
    :catch_e
    move-exception v0

    .line 1278
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public installApplications(ILjava/util/List;)Z
    .registers 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 671
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 673
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 679
    :goto_11
    return v1

    .line 675
    :catch_12
    move-exception v0

    .line 676
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isKioskContainerExistOnDevice()Z
    .registers 7

    .prologue
    .line 1676
    const/4 v2, 0x0

    .line 1677
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_25

    .line 1679
    :try_start_5
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1680
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1682
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskContainerExistOnDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 1684
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1691
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_25
    :goto_25
    return v2

    .line 1686
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_26
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2d

    move-result v2

    goto :goto_25

    .line 1687
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 1688
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public isKioskModeEnabled(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 1657
    const/4 v2, 0x0

    .line 1658
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_2e

    .line 1660
    :try_start_5
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1662
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskModeEnabled  persona "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    .line 1664
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v3, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v2, 0x1

    .line 1671
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v2

    .line 1664
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2e

    .line 1666
    :cond_31
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4, p1}, Landroid/os/IPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_38

    move-result v2

    goto :goto_2e

    .line 1667
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 1668
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskModeEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1599
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1601
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1606
    :goto_a
    return v1

    .line 1602
    :catch_b
    move-exception v0

    .line 1603
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1606
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isPersonaActivated()Z
    .registers 8

    .prologue
    .line 601
    const/4 v2, 0x0

    .line 603
    .local v2, "isKnoxActive":Z
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 605
    .local v5, "personaIds":[I
    if-eqz v5, :cond_15

    .line 606
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v3, :cond_15

    aget v4, v0, v1

    .line 607
    .local v4, "personaId":I
    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    if-nez v6, :cond_16

    .line 608
    const/4 v2, 0x1

    .line 614
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "personaId":I
    :cond_15
    return v2

    .line 606
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "personaId":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public isSessionExpired(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1257
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1259
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isSessionExpired(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1265
    :goto_22
    return v1

    .line 1261
    :catch_23
    move-exception v0

    .line 1262
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x1

    goto :goto_22
.end method

.method public lockPersona(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1246
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_21

    .line 1248
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->lockPersona(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 1254
    :cond_21
    :goto_21
    return-void

    .line 1250
    :catch_22
    move-exception v0

    .line 1251
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1188
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_22

    .line 1190
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 1197
    :cond_22
    :goto_22
    return-void

    .line 1192
    :catch_23
    move-exception v0

    .line 1193
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public notifyKeyguardShow(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 1748
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2c

    .line 1750
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 1756
    :cond_2c
    :goto_2c
    return-void

    .line 1752
    :catch_2d
    move-exception v0

    .line 1753
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public onSentinelActivityResumed()Z
    .registers 4

    .prologue
    .line 1714
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1716
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->onSentinelActivityResumed()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1721
    :goto_a
    return v1

    .line 1717
    :catch_b
    move-exception v0

    .line 1718
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not handle sentinel activity resuming"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .registers 13
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_e

    .line 1555
    :try_start_4
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1560
    :cond_e
    :goto_e
    return-void

    .line 1556
    :catch_f
    move-exception v6

    .line 1557
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public refreshTimer(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1532
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1534
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->refreshTimer(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1539
    :cond_9
    :goto_9
    return-void

    .line 1535
    :catch_a
    move-exception v0

    .line 1536
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .registers 7
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 698
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_10

    .line 700
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerHandler(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 706
    :cond_10
    :goto_10
    return-void

    .line 702
    :catch_11
    move-exception v0

    .line 703
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register Handler, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public registerObserver(ILandroid/content/pm/IPersonaObserver;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 720
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_10

    .line 722
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 728
    :cond_10
    :goto_10
    return-void

    .line 724
    :catch_11
    move-exception v0

    .line 725
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public registerObserver(Landroid/content/pm/IPersonaObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 709
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_10

    .line 711
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 717
    :cond_10
    :goto_10
    return-void

    .line 713
    :catch_11
    move-exception v0

    .line 714
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 5
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 297
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 299
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 304
    :goto_a
    return v1

    .line 300
    :catch_b
    move-exception v0

    .line 301
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .registers 5
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 259
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 261
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 267
    :goto_11
    return v1

    .line 263
    :catch_12
    move-exception v0

    .line 264
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public removeAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .registers 7
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1416
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1418
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1423
    :cond_d
    :goto_d
    return-void

    .line 1419
    :catch_e
    move-exception v0

    .line 1420
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1465
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1467
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1472
    :cond_9
    :goto_9
    return-void

    .line 1468
    :catch_a
    move-exception v0

    .line 1469
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removePersona(I)I
    .registers 5
    .param p1, "personaHandle"    # I

    .prologue
    .line 331
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 333
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removePersona(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 338
    :goto_a
    return v1

    .line 334
    :catch_b
    move-exception v0

    .line 335
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/16 v1, -0x4b1

    goto :goto_a
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .registers 6
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1479
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1481
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1486
    :cond_b
    :goto_b
    return v1

    .line 1482
    :catch_c
    move-exception v0

    .line 1483
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public resetPersona(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 660
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 662
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->resetPersona(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 667
    :goto_a
    return v1

    .line 663
    :catch_b
    move-exception v0

    .line 664
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetPersonaOnReboot(IZ)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1729
    const/4 v1, 0x0

    .line 1730
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_13

    .line 1732
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    move-result v1

    .line 1738
    :cond_13
    :goto_13
    return v1

    .line 1734
    :catch_14
    move-exception v0

    .line 1735
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public rollBackToPersona(I)V
    .registers 6
    .param p1, "parentId"    # I

    .prologue
    .line 1235
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_21

    .line 1237
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollBackToPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollBackToPersona(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 1243
    :cond_21
    :goto_21
    return-void

    .line 1239
    :catch_22
    move-exception v0

    .line 1240
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollBackToPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public rollUpToParent(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1224
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_21

    .line 1226
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollUpToParent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollUpToParent(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 1232
    :cond_21
    :goto_21
    return-void

    .line 1228
    :catch_22
    move-exception v0

    .line 1229
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollUpToParent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1495
    const/4 v1, 0x0

    .line 1496
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1498
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1503
    :cond_b
    :goto_b
    return v1

    .line 1499
    :catch_c
    move-exception v0

    .line 1500
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setBackPressed(IZ)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 1701
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1703
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setBackPressed(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1708
    :cond_9
    :goto_9
    return-void

    .line 1704
    :catch_a
    move-exception v0

    .line 1705
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setCurrentPersonaForUser(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 464
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 466
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setCurrentPersonaForUser(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 471
    :cond_9
    :goto_9
    return-void

    .line 467
    :catch_a
    move-exception v0

    .line 468
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setFsMountState(IZ)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 628
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 630
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFsMountState(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 635
    :cond_9
    :goto_9
    return-void

    .line 631
    :catch_a
    move-exception v0

    .line 632
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .registers 8
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 1508
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1510
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1515
    :cond_9
    :goto_9
    return-void

    .line 1511
    :catch_a
    move-exception v0

    .line 1512
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 519
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 521
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 526
    :cond_9
    :goto_9
    return-void

    .line 522
    :catch_a
    move-exception v0

    .line 523
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 444
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 449
    :cond_9
    :goto_9
    return-void

    .line 445
    :catch_a
    move-exception v0

    .line 446
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 510
    :goto_5
    return-void

    .line 507
    :catch_6
    move-exception v0

    .line 508
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setPersonaState(II)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    .line 580
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 582
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 587
    :cond_9
    :goto_9
    return-void

    .line 583
    :catch_a
    move-exception v0

    .line 584
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 488
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 493
    :cond_9
    :goto_9
    return-void

    .line 489
    :catch_a
    move-exception v0

    .line 490
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPhoneCaller(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 421
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 423
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setPhoneCaller(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 428
    :cond_9
    :goto_9
    return-void

    .line 424
    :catch_a
    move-exception v0

    .line 425
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setShortcutMode(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 1322
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1324
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, setShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shortcut mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setShortcutMode(IZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2c

    .line 1330
    :cond_2b
    :goto_2b
    return-void

    .line 1326
    :catch_2c
    move-exception v0

    .line 1327
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get setShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public setSuperLock(IZ)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 618
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 620
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setSuperLock(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 625
    :cond_9
    :goto_9
    return-void

    .line 621
    :catch_a
    move-exception v0

    .line 622
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setSuperLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public settingSyncAllowed(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1381
    const/4 v1, 0x0

    .line 1382
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1384
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->settingSyncAllowed(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1389
    :cond_b
    :goto_b
    return v1

    .line 1385
    :catch_c
    move-exception v0

    .line 1386
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public switchPersona(I)Z
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 309
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 311
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->switchPersona(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 316
    :goto_a
    return v1

    .line 312
    :catch_b
    move-exception v0

    .line 313
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 322
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 327
    :goto_a
    return v1

    .line 323
    :catch_b
    move-exception v0

    .line 324
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .registers 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 683
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 684
    .local v1, "result":I
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_12

    .line 686
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in PersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    move-result v1

    .line 692
    :cond_12
    :goto_12
    return v1

    .line 688
    :catch_13
    move-exception v0

    .line 689
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public unmarkForRemoval(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1200
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_22

    .line 1202
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmarkForRemoval(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 1208
    :cond_22
    :goto_22
    return-void

    .line 1204
    :catch_23
    move-exception v0

    .line 1205
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 731
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_10

    .line 733
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, unregisterObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 739
    :cond_10
    :goto_10
    return-void

    .line 735
    :catch_11
    move-exception v0

    .line 736
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not unregister observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public userActivity(I)V
    .registers 6
    .param p1, "event"    # I

    .prologue
    .line 1542
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1544
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->userActivity(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1549
    :cond_9
    :goto_9
    return-void

    .line 1545
    :catch_a
    move-exception v0

    .line 1546
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
