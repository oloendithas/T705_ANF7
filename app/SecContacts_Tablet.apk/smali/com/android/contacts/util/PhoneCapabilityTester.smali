.class public final Lcom/android/contacts/util/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static sChatOnIsInitialized:Z

.field private static sIsBlackTheme:Z

.field private static sIsDualCall:Z

.field private static sIsEasyModeSupported:Z

.field private static sIsIPCall:Z

.field private static sIsInitialized:Z

.field private static sIsMobilePrintSupported:Z

.field private static sIsMotionCallEnabled:Z

.field private static sIsMultiWindowSupported:Z

.field private static sIsPhone:Z

.field private static sIsPhoneICE:Z

.field private static sIsSipPhone:Z

.field private static sIsSmsCapable:Z

.field private static sIsTallSizeDisplay:Z

.field private static sIsVibrator:Z

.field private static sIsVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sChatOnIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    new-instance v4, Landroid/telephony/TelephonyManager;

    invoke-direct {v4, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 108
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 109
    .local v0, "UserId":I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_0

    if-lt v0, v9, :cond_4

    :cond_0
    move v5, v6

    :goto_0
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    .line 110
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhoneICE:Z

    .line 111
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_5

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    .line 112
    const-string v5, "ro.build.scafe.size"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "tall"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsTallSizeDisplay:Z

    .line 113
    sput-boolean v6, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    .line 114
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_2
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    .line 116
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_7

    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_3
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVibrator:Z

    .line 117
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_8

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsTallSizeDisplay:Z

    if-eqz v5, :cond_8

    :cond_1
    move v5, v6

    :goto_4
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMotionCallEnabled:Z

    .line 121
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_5
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsIPCall:Z

    .line 125
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_6
    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsDualCall:Z

    .line 128
    if-lt v0, v9, :cond_b

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v8, "smsto"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 136
    sput-boolean v6, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    .line 140
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_7
    sput-boolean v7, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsEasyModeSupported:Z

    .line 141
    const-string v5, "com.sec.android.app.mobileprint"

    invoke-static {p0, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMobilePrintSupported:Z

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    .line 147
    sget-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    if-eqz v5, :cond_3

    .line 149
    sput-boolean v6, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    .line 157
    :cond_3
    const-string v5, "ro.build.scafe.cream"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "black"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsBlackTheme:Z

    .line 158
    return-void

    :cond_4
    move v5, v7

    .line 109
    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 111
    goto/16 :goto_1

    :cond_6
    move v5, v7

    .line 114
    goto/16 :goto_2

    :cond_7
    move v5, v7

    .line 116
    goto/16 :goto_3

    :cond_8
    move v5, v7

    .line 117
    goto/16 :goto_4

    :cond_9
    move v5, v7

    .line 121
    goto :goto_5

    :cond_a
    move v5, v7

    .line 125
    goto :goto_6

    .line 139
    :cond_b
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v5

    sput-boolean v5, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    goto :goto_7
.end method

.method public static isBlackTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 315
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsBlackTheme:Z

    return v0
.end method

.method public static isCameraIntentRegistered(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isChatOnVSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public static isDualCall(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 197
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsDualCall:Z

    return v0
.end method

.method public static isEasyModeSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 299
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsEasyModeSupported:Z

    return v0
.end method

.method public static isFonblet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isFonbletLandscape(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 247
    .local v2, "isFonblet":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 248
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 249
    const/4 v3, 0x1

    .line 254
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "isFonblet":Z
    :cond_0
    :goto_0
    return v3

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isFonbletPortrait(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 260
    .local v1, "isFonblet":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 261
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_0

    .line 264
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIPCall(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 186
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsIPCall:Z

    return v0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobilePrintSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 309
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMobilePrintSupported:Z

    return v0
.end method

.method public static isMotionCallEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 213
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMotionCallEnabled:Z

    return v0
.end method

.method public static isMultiWindowSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 282
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    return v0
.end method

.method public static isPhoneICE(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 103
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhoneICE:Z

    return v0
.end method

.method public static isSipPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 165
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    return v0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 273
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 221
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const-string v0, "com.android.mms"

    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    :cond_3
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    goto :goto_0
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVibrator(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 205
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVibrator:Z

    return v0
.end method

.method public static isVideoCall(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 175
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    return v0
.end method
