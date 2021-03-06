.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_SIGNATURE_FALLBACK:Ljava/lang/String; = "lockscreen.signature_fallback"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlockmsg.txt"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final SIGNATURE_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.signatureeverchosen"

.field public static final SIGNATURE_REGISTERED_KEY:Ljava/lang/String; = "lockscreen.signatureregistered"

.field public static final SKTLOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field private static cacPasswordSetProgress:Z

.field private static lockChecksum:Ljava/lang/String;

.field private static lockChecksumUnlock:Ljava/lang/String;

.field private static lockMsg:Ljava/lang/String;

.field private static lockMsgUnlock:Ljava/lang/String;

.field private static lockPassword:Ljava/lang/String;

.field private static lockPasswordUnlock:Ljava/lang/String;

.field private static lockSaveMsg:Ljava/lang/String;

.field private static lockSaveMsgUnlock:Ljava/lang/String;

.field private static lockType:Ljava/lang/String;

.field private static lockTypeUnlock:Ljava/lang/String;

.field private static mIsCallbackCalled:Z

.field private static mScRegisterStatus:I

.field private static mScVerifyStatus:I

.field private static mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

.field private static mSwipeSmartLock:Z

.field private static volatile sCurrentUserId:I


# instance fields
.field mBeforeTimeout:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 215
    sput v1, Lcom/android/internal/widget/LockPatternUtils;->mScRegisterStatus:I

    .line 216
    sput v1, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 218
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 230
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 233
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 242
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    .line 243
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    .line 247
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    .line 248
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2568
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mBeforeTimeout:Z

    .line 277
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 283
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 285
    return-void
.end method

.method private SeperateLockString(Ljava/lang/String;I)V
    .registers 5
    .param p1, "parsing"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 2926
    if-nez p2, :cond_5

    .line 2927
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockPassword:Ljava/lang/String;

    .line 2935
    :goto_4
    return-void

    .line 2928
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 2929
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockType:Ljava/lang/String;

    goto :goto_4

    .line 2930
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 2931
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockChecksum:Ljava/lang/String;

    goto :goto_4

    .line 2933
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    goto :goto_4
.end method

.method private SeperateUnlockString(Ljava/lang/String;I)V
    .registers 5
    .param p1, "parsing"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 2938
    if-nez p2, :cond_5

    .line 2939
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockPasswordUnlock:Ljava/lang/String;

    .line 2947
    :goto_4
    return-void

    .line 2940
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 2941
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockTypeUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2942
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 2943
    sput-object p1, Lcom/android/internal/widget/LockPatternUtils;->lockChecksumUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2945
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 111
    sput p0, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    return p0
.end method

.method private clearLockExceptPwd()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 929
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockFingerprintEnabled(Z)V

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 932
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 933
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 934
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 935
    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1862
    array-length v1, p0

    .line 1864
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_4e

    .line 1873
    const/4 v4, 0x0

    .line 1874
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1876
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1877
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_31

    .line 1878
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1879
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1880
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_23

    .line 1881
    add-int/2addr v4, v3

    .line 1877
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1866
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_26
    const-string v6, ""

    .line 1894
    :goto_28
    return-object v6

    .line 1869
    :pswitch_29
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 1885
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1887
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_48

    .line 1888
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1889
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_45

    .line 1890
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1894
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 1864
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 8
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 1105
    const/4 v1, 0x0

    .line 1106
    .local v1, "hasDigit":Z
    const/4 v2, 0x0

    .line 1107
    .local v2, "hasNonDigit":Z
    const/4 v3, 0x0

    .line 1108
    .local v3, "hasSymbol":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1109
    .local v5, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v5, :cond_2b

    .line 1110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1111
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1112
    const/4 v1, 0x1

    .line 1109
    :cond_15
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1114
    :cond_18
    const/4 v2, 0x1

    .line 1115
    const/16 v6, 0x41

    if-lt v0, v6, :cond_21

    const/16 v6, 0x5a

    if-le v0, v6, :cond_15

    :cond_21
    const/16 v6, 0x61

    if-lt v0, v6, :cond_29

    const/16 v6, 0x7a

    if-le v0, v6, :cond_15

    .line 1118
    :cond_29
    const/4 v3, 0x1

    goto :goto_15

    .line 1123
    .end local v0    # "c":C
    :cond_2b
    if-eqz v2, :cond_34

    if-eqz v1, :cond_34

    if-eqz v3, :cond_34

    .line 1124
    const/high16 v6, 0x60000

    .line 1136
    :goto_33
    return v6

    .line 1127
    :cond_34
    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    .line 1128
    const/high16 v6, 0x50000

    goto :goto_33

    .line 1130
    :cond_3b
    if-eqz v2, :cond_40

    .line 1131
    const/high16 v6, 0x40000

    goto :goto_33

    .line 1133
    :cond_40
    if-eqz v1, :cond_45

    .line 1134
    const/high16 v6, 0x20000

    goto :goto_33

    .line 1136
    :cond_45
    const/4 v6, 0x0

    goto :goto_33
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 2210
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 2214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2217
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2218
    return-void
.end method

.method private finishSignature()V
    .registers 4

    .prologue
    .line 2221
    const-string v1, "lockscreen.signatureeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 2224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2228
    return-void
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2402
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppWidgets(I)[I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 1841
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1843
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1844
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_47

    .line 1845
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1846
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1847
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, v3

    if-ge v6, v7, :cond_46

    .line 1848
    aget-object v0, v3, v6

    .line 1850
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_29} :catch_2c

    .line 1847
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1851
    :catch_2c
    move-exception v5

    .line 1852
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/4 v2, 0x0

    .line 1858
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_46
    :goto_46
    return-object v2

    :cond_47
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_46
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1813
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 1815
    .end local p2    # "defaultValue":Z
    :goto_8
    return p2

    .line 1814
    .restart local p2    # "defaultValue":Z
    :catch_9
    move-exception v0

    .line 1815
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method private getCurrentOrCallingUserId()I
    .registers 2

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_9

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 664
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_8
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_10

    .line 289
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2073
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 2075
    .end local p2    # "defaultValue":J
    :goto_8
    return-wide p2

    .line 2074
    .restart local p2    # "defaultValue":J
    :catch_9
    move-exception v0

    .line 2075
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method private getSalt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1435
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    .line 1436
    .local v1, "salt":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_22

    .line 1438
    :try_start_c
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 1439
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1440
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_22} :catch_27

    .line 1446
    :cond_22
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1441
    :catch_27
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 387
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: tContext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 385
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_56
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 416
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: tContext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 414
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_56
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 2093
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2098
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2100
    :goto_a
    return-object v1

    .line 2099
    :catch_b
    move-exception v0

    .line 2100
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public static isInMdppMode()Z
    .registers 5

    .prologue
    .line 252
    const-string/jumbo v2, "security.mdpp"

    const-string v3, "Empty"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "mdppProperty":Ljava/lang/String;
    const-string v2, "MDPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v2, "Empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "None"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v1, 0x1

    .line 257
    .local v1, "result":Z
    :goto_32
    return v1

    .line 255
    .end local v1    # "result":Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public static isSafeModeEnabled()Z
    .registers 1

    .prologue
    .line 2315
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    .line 2320
    :goto_f
    return v0

    .line 2317
    :catch_10
    move-exception v0

    .line 2320
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1412
    const/4 v1, 0x0

    .line 1426
    :goto_3
    return-object v1

    .line 1415
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1416
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1417
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1418
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1419
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1422
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1423
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 1424
    .local v1, "hash":[B
    goto :goto_3

    .line 1425
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1426
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 1391
    const-string v4, ""

    .line 1400
    :goto_4
    return-object v4

    .line 1393
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1395
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1396
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 1397
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1398
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1400
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1834
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1825
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1830
    :goto_7
    return-void

    .line 1826
    :catch_8
    move-exception v0

    .line 1828
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 2080
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2081
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2085
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2090
    :goto_7
    return-void

    .line 2086
    :catch_8
    move-exception v0

    .line 2088
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2106
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_26

    .line 2113
    :goto_7
    return-void

    .line 2107
    :catch_8
    move-exception v1

    .line 2109
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2110
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 2111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password 2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1376
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1377
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 1378
    aget-byte v0, v1, v2

    .line 1379
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1381
    .end local v0    # "b":B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 1535
    const-string v0, "0123456789ABCDEF"

    .line 1536
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1537
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1541
    :cond_43
    return-object v2
.end method

.method private updateCACAuthentication()V
    .registers 5

    .prologue
    .line 547
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacPasswordSetProgress flag value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACPasswordEnabled flag value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    if-nez v1, :cond_5b

    .line 550
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 555
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5b
    return-void
.end method

.method private updateCACAuthentication(I)V
    .registers 8
    .param p1, "quality"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCACAuthentication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication()V

    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->update_lockscreen_type(I)V

    .line 577
    if-ne p1, v5, :cond_45

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setCACPasswordEnabled(Z)Z

    .line 578
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCACPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_47

    :goto_39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    :cond_45
    move v0, v2

    .line 577
    goto :goto_26

    :cond_47
    move v1, v2

    .line 578
    goto :goto_39
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1142
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    .line 1159
    :goto_f
    return-void

    .line 1147
    :cond_10
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1148
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_21

    .line 1149
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1153
    :cond_21
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1155
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_25
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_f

    .line 1156
    :catch_29
    move-exception v1

    .line 1157
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private update_lockscreen_type(I)V
    .registers 5
    .param p1, "quality"    # I

    .prologue
    .line 563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 564
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_27

    .line 565
    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    :goto_16
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 571
    return-void

    .line 567
    :cond_27
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16
.end method

.method private writeAppWidgets([I)V
    .registers 6
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1921
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .registers 9
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 2022
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 2023
    .local v3, "widgets":[I
    if-nez v3, :cond_8

    .line 2041
    :cond_7
    :goto_7
    return v4

    .line 2026
    :cond_8
    if-ltz p2, :cond_7

    array-length v5, v3

    if-gt p2, v5, :cond_7

    .line 2029
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 2030
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_29

    .line 2031
    if-ne p2, v0, :cond_1d

    .line 2032
    aput p1, v2, v0

    .line 2033
    add-int/lit8 v0, v0, 0x1

    .line 2035
    :cond_1d
    array-length v4, v2

    if-ge v0, v4, :cond_26

    .line 2036
    aget v4, v3, v1

    aput v4, v2, v0

    .line 2037
    add-int/lit8 v1, v1, 0x1

    .line 2030
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2040
    :cond_29
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 2041
    const/4 v4, 0x1

    goto :goto_7
.end method

.method public addContextualWidget(I)Z
    .registers 6
    .param p1, "widgetId"    # I

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v2

    .line 1926
    .local v2, "widgets":[I
    if-nez v2, :cond_8

    .line 1927
    const/4 v3, 0x0

    .line 1937
    :goto_7
    return v3

    .line 1930
    :cond_8
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 1932
    .local v1, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_18

    .line 1933
    aget v3, v2, v0

    aput v3, v1, v0

    .line 1932
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1935
    :cond_18
    array-length v3, v2

    aput p1, v1, v3

    .line 1936
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeContextualWidgets([I)V

    .line 1937
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public checkBackupPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 729
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 731
    :goto_c
    return v2

    .line 730
    :catch_d
    move-exception v0

    .line 731
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkFingerprintPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2478
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 2479
    .local v3, "versionInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_40

    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2480
    const/4 v1, 0x0

    .line 2481
    .local v1, "personaManager":Landroid/os/PersonaManager;
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    check-cast v1, Landroid/os/PersonaManager;

    .line 2482
    .restart local v1    # "personaManager":Landroid/os/PersonaManager;
    if-eqz v1, :cond_39

    .line 2483
    invoke-virtual {v1, p2}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v0

    .line 2484
    .local v0, "parentId":I
    if-eq v0, p2, :cond_30

    .line 2485
    const-string v4, "LockPatternUtils"

    const-string v5, "delegate checkFingerprintPassword to parent of this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 2495
    .end local v0    # "parentId":I
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    .end local v3    # "versionInfo":Landroid/os/Bundle;
    :goto_38
    return v4

    .line 2489
    .restart local v1    # "personaManager":Landroid/os/PersonaManager;
    .restart local v3    # "versionInfo":Landroid/os/Bundle;
    :cond_39
    const-string v4, "LockPatternUtils"

    const-string v5, "Can\'t access persona service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_40
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_49

    move-result v4

    goto :goto_38

    .line 2494
    .end local v3    # "versionInfo":Landroid/os/Bundle;
    :catch_49
    move-exception v2

    .line 2495
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v4, 0x0

    goto :goto_38
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2597
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2605
    .local v2, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 2610
    .local v0, "length":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move-result v3

    .line 2615
    .end local v0    # "length":I
    :goto_18
    return v3

    .line 2614
    :catch_19
    move-exception v1

    .line 2615
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x1

    goto :goto_18
.end method

.method public checkPassword(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 704
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 706
    :goto_8
    return v1

    .line 705
    :catch_9
    move-exception v0

    .line 706
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 756
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 775
    :cond_7
    :goto_7
    return v5

    .line 759
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 760
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "passwordHistory":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 765
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 766
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 767
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_7

    .line 770
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 772
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_32

    .line 773
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 775
    :cond_32
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_7
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    .line 442
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 445
    .local v0, "cv":Landroid/os/ConditionVariable;
    :try_start_f
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    invoke-virtual {v2, v3, v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_9d

    .line 470
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: before block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: before block cv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    if-nez v2, :cond_80

    .line 477
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: mIsCallbackCalled is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 480
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: mIsCallbackCalled is false after block-- Test log"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: mIsCallbackCalled is false after block"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_80
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    :goto_9c
    return v2

    .line 463
    :catch_9d
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 465
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 466
    const/4 v2, 0x5

    goto :goto_9c
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 690
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 692
    :goto_10
    return v2

    .line 691
    :catch_11
    move-exception v0

    .line 692
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkPcwPassword(Ljava/lang/String;)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2673
    if-nez p1, :cond_4

    .line 2696
    :cond_3
    :goto_3
    return v4

    .line 2676
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "lock_pcw_password"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2677
    .local v2, "savedPassword":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2679
    .local v0, "base64":Ljava/lang/String;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "savedPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " input password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :try_start_30
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 2683
    .local v3, "sha1":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_42} :catch_4f

    move-result-object v0

    .line 2691
    .end local v3    # "sha1":[B
    :goto_43
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 2693
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2694
    const/4 v4, 0x1

    goto :goto_3

    .line 2687
    :catch_4f
    move-exception v1

    .line 2688
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    const-string v6, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3105
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3107
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3109
    :goto_c
    return v2

    .line 3108
    :catch_d
    move-exception v0

    .line 3109
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 3076
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3078
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3080
    :goto_c
    return v2

    .line 3079
    :catch_d
    move-exception v0

    .line 3080
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3019
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3021
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3023
    :goto_c
    return v2

    .line 3022
    :catch_d
    move-exception v0

    .line 3023
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2990
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2992
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2994
    :goto_c
    return v2

    .line 2993
    :catch_d
    move-exception v0

    .line 2994
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModePattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3046
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3048
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 3050
    :goto_10
    return v2

    .line 3049
    :catch_11
    move-exception v0

    .line 3050
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkSKTPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 738
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkSKTPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 740
    :goto_c
    return v2

    .line 739
    :catch_d
    move-exception v0

    .line 740
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkSignatureBackupPin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2283
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2285
    .local v2, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkSignatureBackupPin([BI)Z

    move-result v0

    .line 2287
    .local v0, "matched":Z
    if-eqz v0, :cond_1b

    if-nez v2, :cond_1b

    .line 2288
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 2292
    .end local v0    # "matched":Z
    :cond_1b
    :goto_1b
    return v0

    .line 2291
    :catch_1c
    move-exception v1

    .line 2292
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public clearLock(Z)V
    .registers 5
    .param p1, "isFallback"    # Z

    .prologue
    .line 941
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 942
    :cond_5
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 943
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd()V

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_enabled"

    const-string v2, "10"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 945
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_password"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    return-void
.end method

.method public clearLockExceptPwd(Z)V
    .registers 2
    .param p1, "isFallback"    # Z

    .prologue
    .line 950
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 951
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd()V

    .line 952
    return-void
.end method

.method public clearLockoutAttemptDeadline()V
    .registers 4

    .prologue
    .line 1744
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1745
    return-void
.end method

.method public deinitializeCACAuthentication()V
    .registers 4

    .prologue
    .line 433
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    .line 435
    return-void
.end method

.method deleteGallery()V
    .registers 4

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1004
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1005
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1008
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public deleteTempGallery()V
    .registers 4

    .prologue
    .line 994
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 995
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 997
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 861
    const/4 v0, 0x0

    .line 864
    .local v0, "activePasswordQuality":I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 866
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_6e

    .line 922
    :cond_e
    :goto_e
    return v0

    .line 868
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 869
    const/high16 v0, 0x10000

    goto :goto_e

    .line 873
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 874
    const v0, 0x8000

    goto :goto_e

    .line 878
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 879
    const v0, 0x9000

    goto :goto_e

    .line 883
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 884
    const/high16 v0, 0x20000

    goto :goto_e

    .line 888
    :sswitch_35
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 889
    const/high16 v0, 0x40000

    goto :goto_e

    .line 893
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 894
    const/high16 v0, 0x50000

    goto :goto_e

    .line 898
    :sswitch_47
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 899
    const/high16 v0, 0x60000

    goto :goto_e

    .line 904
    :sswitch_50
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 905
    const v0, 0x9100

    goto :goto_e

    .line 910
    :sswitch_5a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartCardPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 911
    const/high16 v0, 0x70000

    goto :goto_e

    .line 916
    :sswitch_63
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 917
    const v0, 0x11000

    goto :goto_e

    .line 866
    nop

    :sswitch_data_6e
    .sparse-switch
        0x8000 -> :sswitch_18
        0x9000 -> :sswitch_22
        0x9100 -> :sswitch_50
        0x10000 -> :sswitch_f
        0x11000 -> :sswitch_63
        0x20000 -> :sswitch_2c
        0x40000 -> :sswitch_35
        0x50000 -> :sswitch_3e
        0x60000 -> :sswitch_47
        0x70000 -> :sswitch_5a
        0x90000 -> :sswitch_50
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .registers 2

    .prologue
    .line 1837
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getBeforeTimeout()Z
    .registers 2

    .prologue
    .line 2575
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mBeforeTimeout:Z

    return v0
.end method

.method public getCarrierLockPlusInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "kindofinfo"    # I

    .prologue
    .line 2894
    packed-switch p1, :pswitch_data_1e

    .line 2920
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2896
    :pswitch_5
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockPassword:Ljava/lang/String;

    goto :goto_4

    .line 2899
    :pswitch_8
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockType:Ljava/lang/String;

    goto :goto_4

    .line 2902
    :pswitch_b
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockChecksum:Ljava/lang/String;

    goto :goto_4

    .line 2905
    :pswitch_e
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    goto :goto_4

    .line 2908
    :pswitch_11
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockPasswordUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2911
    :pswitch_14
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockTypeUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2914
    :pswitch_17
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockChecksumUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2917
    :pswitch_1a
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    goto :goto_4

    .line 2894
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public getCarrierLockPlusMsg()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2846
    const/4 v1, 0x0

    .line 2848
    .local v1, "mCarrierlockPlusMsg":Ljava/lang/String;
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_1a

    move-result-object v1

    .line 2852
    :goto_10
    if-eqz v1, :cond_1d

    .line 2853
    const-string v2, "LockPatternUtils"

    const-string v3, "mCarrierlockPlusMsg is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    .end local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :goto_19
    return-object v1

    .line 2849
    .restart local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :catch_1a
    move-exception v0

    .line 2850
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    move-object v1, v2

    .line 2856
    goto :goto_19
.end method

.method public getContextualWidgets()[I
    .registers 11

    .prologue
    .line 1974
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_contextual_widget_ids"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1976
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1977
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_48

    .line 1978
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1979
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1980
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    array-length v7, v3

    if-ge v6, v7, :cond_47

    .line 1981
    aget-object v0, v3, v6

    .line 1983
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_20
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_2d

    .line 1980
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1984
    :catch_2d
    move-exception v5

    .line 1985
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v2, 0x0

    .line 1991
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_47
    :goto_47
    return-object v2

    :cond_48
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_47
.end method

.method public getCurrentUser()I
    .registers 4

    .prologue
    .line 639
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_9

    .line 641
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 646
    :goto_8
    return v1

    .line 644
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 645
    :catch_14
    move-exception v0

    .line 646
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 266
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFallbackAppWidgetId()I
    .registers 5

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getIntentForClockAppWidget()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 2969
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2970
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2972
    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 1319
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1323
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_16

    .line 1324
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1329
    :cond_16
    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1d

    .line 1330
    const v0, 0x9100

    .line 1333
    :cond_1d
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1735
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1736
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1737
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_17

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_18

    :cond_17
    move-wide v0, v4

    .line 1740
    .end local v0    # "deadline":J
    :cond_18
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1805
    .local v0, "nextAlarm":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1806
    :cond_12
    const/4 v0, 0x0

    .line 1808
    .end local v0    # "nextAlarm":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1094
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable()Z
    .registers 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .registers 3

    .prologue
    .line 2310
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 2360
    const/4 v7, 0x0

    .line 2361
    .local v7, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v9

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2366
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 2367
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2a

    .line 2368
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2369
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2371
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2372
    const/4 v6, 0x0

    .line 2376
    :cond_2e
    if-nez v7, :cond_55

    .line 2377
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v7

    .line 2381
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 2384
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2385
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2389
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2392
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_55
    return-object v7
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 4

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 4

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 4

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 4

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getSKTLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1754
    const-string/jumbo v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1755
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1756
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_19

    const-wide/32 v6, 0x927c0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1a

    :cond_19
    move-wide v0, v4

    .line 1759
    .end local v0    # "deadline":J
    :cond_1a
    return-wide v0
.end method

.method public getShortcutAppWidgetId()I
    .registers 5

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_shortcut_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSignatureLockInfo()[B
    .registers 5

    .prologue
    .line 2232
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->getSignatureInfo(I)[B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 2236
    :goto_c
    return-object v1

    .line 2233
    :catch_d
    move-exception v0

    .line 2234
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get lock signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getSignatureVerificationLevel()I
    .registers 4

    .prologue
    .line 2301
    const-string v0, "lock_signature_verification_level"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getWidgetsEnabled()Z
    .registers 2

    .prologue
    .line 2339
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2343
    const-string v0, "lockscreen.widgets_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public hasWidgetsEnabledInKeyguard(I)Z
    .registers 5
    .param p1, "userid"    # I

    .prologue
    .line 2329
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v1

    .line 2330
    .local v1, "widgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 2331
    aget v2, v1, v0

    if-lez v2, :cond_e

    .line 2332
    const/4 v2, 0x1

    .line 2335
    :goto_d
    return v2

    .line 2330
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2335
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public initializeCACAuthentication()V
    .registers 3

    .prologue
    .line 406
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 410
    :cond_10
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .registers 3

    .prologue
    .line 425
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 427
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 429
    :cond_10
    return-void
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 3

    .prologue
    .line 843
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1583
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1585
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    const-string v5, "com.android.facelock"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_17

    .line 1591
    const-string v5, "android.hardware.camera.front"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 1604
    :cond_16
    :goto_16
    return v3

    .line 1586
    :catch_17
    move-exception v0

    .line 1587
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16

    .line 1594
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1598
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1599
    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_37

    .line 1600
    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_16

    :cond_37
    move v3, v4

    .line 1604
    goto :goto_16
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1625
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1626
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isCACCardRegistered()Z
    .registers 5

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20

    move-result v0

    .line 506
    :goto_7
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return v0

    .line 503
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public isCACPasswordEnabled()Z
    .registers 3

    .prologue
    .line 396
    const-string v0, "lockscreen.smartcard_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .registers 3

    .prologue
    .line 2702
    const/4 v0, 0x0

    .line 2716
    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2721
    const-string v3, "SKT"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2722
    const/4 v1, 0x0

    .line 2724
    .local v1, "mCarrierlockPlusMode":Ljava/lang/String;
    :try_start_c
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_2d

    move-result-object v1

    .line 2728
    :goto_1a
    if-eqz v1, :cond_2c

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2729
    const-string v2, "LockPatternUtils"

    const-string v3, "isCarrierLockPlusEnabled() is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const/4 v2, 0x1

    .line 2735
    .end local v1    # "mCarrierlockPlusMode":Ljava/lang/String;
    :cond_2c
    return v2

    .line 2725
    .restart local v1    # "mCarrierlockPlusMode":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 2726
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_1a
.end method

.method public isContextualWidget(I)Z
    .registers 6
    .param p1, "widgetId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v1

    .line 1996
    .local v1, "widgets":[I
    if-nez v1, :cond_8

    .line 2004
    :cond_7
    :goto_7
    return v2

    .line 2000
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 2001
    aget v3, v1, v0

    if-ne p1, v3, :cond_12

    .line 2002
    const/4 v2, 0x1

    goto :goto_7

    .line 2000
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public isDeviceConnectedWithCACCard()Z
    .registers 5

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .line 513
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2356
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .registers 5

    .prologue
    .line 2663
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_pcw_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2665
    .local v0, "isPcwEnable":Ljava/lang/String;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPcwEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    if-eqz v0, :cond_2c

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2667
    const/4 v1, 0x1

    .line 2669
    :goto_2b
    return v1

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public isLockFingerprintEnabled()Z
    .registers 2

    .prologue
    .line 2512
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockFingerprintEnabled(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v3, 0x11000

    const/4 v0, 0x0

    .line 2516
    const-string v1, "lock_fingerprint_autolock"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1548
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1549
    .local v3, "mode":J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1550
    .local v1, "backupMode":J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_33

    cmp-long v8, v3, v11

    if-eqz v8, :cond_33

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_33

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_33

    const-wide/32 v8, 0x70000

    cmp-long v8, v3, v8

    if-nez v8, :cond_62

    :cond_33
    move v5, v7

    .line 1555
    .local v5, "passwordEnabled":Z
    :goto_34
    cmp-long v8, v1, v13

    if-eqz v8, :cond_4a

    cmp-long v8, v1, v11

    if-eqz v8, :cond_4a

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_4a

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_64

    :cond_4a
    move v0, v7

    .line 1560
    .local v0, "backupEnabled":Z
    :goto_4b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_66

    if-nez v5, :cond_61

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_66

    :cond_5f
    if-eqz v0, :cond_66

    :cond_61
    :goto_61
    return v7

    .end local v0    # "backupEnabled":Z
    .end local v5    # "passwordEnabled":Z
    :cond_62
    move v5, v6

    .line 1550
    goto :goto_34

    .restart local v5    # "passwordEnabled":Z
    :cond_64
    move v0, v6

    .line 1555
    goto :goto_4b

    .restart local v0    # "backupEnabled":Z
    :cond_66
    move v7, v6

    .line 1560
    goto :goto_61
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 1568
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_31

    move v0, v1

    .line 1572
    .local v0, "backupEnabled":Z
    :goto_10
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_2e
    if-eqz v0, :cond_33

    :cond_30
    :goto_30
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_31
    move v0, v2

    .line 1568
    goto :goto_10

    .restart local v0    # "backupEnabled":Z
    :cond_33
    move v1, v2

    .line 1572
    goto :goto_30
.end method

.method public isLockScreenDisabled()Z
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 973
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 974
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 975
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 976
    .local v1, "personaManager":Landroid/os/PersonaManager;
    sget v4, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 977
    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaPolicyManager;

    .line 978
    .local v0, "manager":Landroid/os/PersonaPolicyManager;
    if-eqz v0, :cond_44

    .line 979
    sget v4, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    invoke-virtual {v0, v4}, Landroid/os/PersonaPolicyManager;->getPasswordLockPolicy(I)Z

    move-result v4

    if-nez v4, :cond_44

    .line 980
    const-string v4, "LockPatternUtils"

    const-string v5, "isLockScreenDisabled return true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "manager":Landroid/os/PersonaPolicyManager;
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_43
    :goto_43
    return v3

    :cond_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "lockscreen.disabled"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_43

    :cond_54
    const/4 v3, 0x0

    goto :goto_43
.end method

.method public isOwnerInfoEnabled()Z
    .registers 3

    .prologue
    .line 1098
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .registers 2

    .prologue
    .line 2653
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen()Z
    .registers 3

    .prologue
    .line 833
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 3

    .prologue
    .line 1768
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isRecoveryLockEnabled()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2410
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_Recovery_enabled"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isSecure()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2116
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    int-to-long v5, v9

    .line 2117
    .local v5, "mode":J
    const-wide/32 v9, 0x10000

    cmp-long v9, v5, v9

    if-nez v9, :cond_91

    move v2, v7

    .line 2118
    .local v2, "isPattern":Z
    :goto_f
    const-wide/32 v9, 0x20000

    cmp-long v9, v5, v9

    if-eqz v9, :cond_32

    const-wide/32 v9, 0x40000

    cmp-long v9, v5, v9

    if-eqz v9, :cond_32

    const-wide/32 v9, 0x50000

    cmp-long v9, v5, v9

    if-eqz v9, :cond_32

    const-wide/32 v9, 0x60000

    cmp-long v9, v5, v9

    if-eqz v9, :cond_32

    const-wide/32 v9, 0x70000

    cmp-long v9, v5, v9

    if-nez v9, :cond_94

    :cond_32
    move v1, v7

    .line 2123
    .local v1, "isPassword":Z
    :goto_33
    const-wide/32 v9, 0x90000

    cmp-long v9, v5, v9

    if-eqz v9, :cond_41

    const-wide/32 v9, 0x9100

    cmp-long v9, v5, v9

    if-nez v9, :cond_96

    :cond_41
    sget-boolean v9, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    if-nez v9, :cond_96

    move v4, v7

    .line 2125
    .local v4, "isSmartUnlock":Z
    :goto_46
    const-wide/32 v9, 0x11000

    cmp-long v9, v5, v9

    if-nez v9, :cond_98

    move v0, v7

    .line 2126
    .local v0, "isFingerprint":Z
    :goto_4e
    const-wide/32 v9, 0x9000

    cmp-long v9, v5, v9

    if-nez v9, :cond_9a

    move v3, v7

    .line 2127
    .local v3, "isSignature":Z
    :goto_56
    if-eqz v2, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v9

    if-nez v9, :cond_90

    :cond_64
    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v9

    if-nez v9, :cond_90

    :cond_6c
    if-nez v0, :cond_90

    if-eqz v4, :cond_76

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v9

    if-nez v9, :cond_90

    :cond_76
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v9

    if-nez v9, :cond_90

    if-nez v3, :cond_90

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v9

    if-nez v9, :cond_90

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v9

    if-nez v9, :cond_90

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRecoveryLockEnabled()Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 2133
    .local v7, "secure":Z
    :cond_90
    :goto_90
    return v7

    .end local v0    # "isFingerprint":Z
    .end local v1    # "isPassword":Z
    .end local v2    # "isPattern":Z
    .end local v3    # "isSignature":Z
    .end local v4    # "isSmartUnlock":Z
    .end local v7    # "secure":Z
    :cond_91
    move v2, v8

    .line 2117
    goto/16 :goto_f

    .restart local v2    # "isPattern":Z
    :cond_94
    move v1, v8

    .line 2118
    goto :goto_33

    .restart local v1    # "isPassword":Z
    :cond_96
    move v4, v8

    .line 2123
    goto :goto_46

    .restart local v4    # "isSmartUnlock":Z
    :cond_98
    move v0, v8

    .line 2125
    goto :goto_4e

    .restart local v0    # "isFingerprint":Z
    :cond_9a
    move v3, v8

    .line 2126
    goto :goto_56

    .restart local v3    # "isSignature":Z
    :cond_9c
    move v7, v8

    .line 2127
    goto :goto_90
.end method

.method public isSignatureEverChosen()Z
    .registers 3

    .prologue
    .line 853
    const-string v0, "lockscreen.signatureeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSignatureLockInstalled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1634
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1636
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v3, "com.sec.android.signaturelock"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_e

    .line 1641
    :goto_d
    return v2

    .line 1637
    :catch_e
    move-exception v0

    .line 1638
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public isSmartCardPasswordEnabled()Z
    .registers 7

    .prologue
    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "ret":Z
    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 533
    .local v0, "mode":J
    const-wide/32 v3, 0x70000

    cmp-long v3, v0, v3

    if-nez v3, :cond_11

    .line 534
    const/4 v2, 0x1

    .line 536
    :cond_11
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1699
    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingSmartUnlock()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .registers 5

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 522
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v0
.end method

.method public isSwipeSmartLock()Z
    .registers 2

    .prologue
    .line 2962
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1714
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1661
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1662
    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_12

    .line 1663
    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    .line 1666
    :cond_12
    return v1
.end method

.method public isVisiblePatternEnabled()Z
    .registers 3

    .prologue
    .line 1655
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisibleSignatureEnabled()Z
    .registers 3

    .prologue
    .line 1674
    const-string v0, "lock_signature_visible_pattern"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public lock()Z
    .registers 7

    .prologue
    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 673
    .local v2, "userId":I
    :try_start_5
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->lock(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    move-result v1

    .line 677
    :goto_d
    return v1

    .line 674
    :catch_e
    move-exception v0

    .line 675
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not lock keystore!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public parsingCarrierLockPlusMsg()V
    .registers 9

    .prologue
    .line 2861
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockPlusMsg()Ljava/lang/String;

    move-result-object v2

    .line 2862
    .local v2, "mParsingLockString":Ljava/lang/String;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mParsingLockString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    if-eqz v2, :cond_86

    .line 2864
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2865
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2866
    const/4 v1, 0x0

    .line 2867
    .local v1, "lock_cnt":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2868
    .local v3, "parsingLockString":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->SeperateLockString(Ljava/lang/String;I)V

    .line 2869
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2871
    .end local v3    # "parsingLockString":Ljava/lang/String;
    :cond_40
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    sput-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    .line 2872
    const-string v5, ""

    sput-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    .line 2873
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockChecksum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockChecksum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockSaveMsg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lock_cnt":I
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_86
    return-void
.end method

.method public parsingCarrierUnlockPlusMsg()V
    .registers 9

    .prologue
    .line 2878
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockPlusMsg()Ljava/lang/String;

    move-result-object v1

    .line 2879
    .local v1, "mParsingUnlockString":Ljava/lang/String;
    if-eqz v1, :cond_6d

    .line 2880
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2881
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2882
    const/4 v4, 0x0

    .line 2883
    .local v4, "unlock_cnt":I
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2884
    .local v2, "parsingUnlockString":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->SeperateUnlockString(Ljava/lang/String;I)V

    .line 2885
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 2887
    .end local v2    # "parsingUnlockString":Ljava/lang/String;
    :cond_27
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    sput-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    .line 2888
    const-string v5, ""

    sput-object v5, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    .line 2889
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockPasswordUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockPasswordUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockTypeUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockTypeUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockChecksumUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockChecksumUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockSaveMsgUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v4    # "unlock_cnt":I
    :cond_6d
    return-void
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1503
    if-nez p1, :cond_4

    .line 1504
    const/4 v3, 0x0

    .line 1531
    :goto_3
    return-object v3

    .line 1506
    :cond_4
    const/4 v0, 0x0

    .line 1507
    .local v0, "algo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1515
    .local v3, "hashed":[B
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1516
    .local v8, "saltedPassword":[B
    const/4 v9, 0x0

    .line 1517
    .local v9, "sha":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1518
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1519
    .local v6, "s":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    const/16 v10, 0x400

    if-ge v4, v10, :cond_58

    .line 1520
    if-eqz v9, :cond_34

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1521
    :cond_34
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1522
    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1523
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 1519
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1525
    :cond_58
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1527
    .local v1, "e":J
    const-string v10, "LockPatternUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "passwordToHash time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_86} :catch_88

    goto/16 :goto_3

    .line 1528
    .end local v1    # "e":J
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "s":J
    .end local v8    # "saltedPassword":[B
    .end local v9    # "sha":[B
    :catch_88
    move-exception v1

    .line 1529
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v10, "LockPatternUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .registers 18
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1475
    if-nez p1, :cond_4

    .line 1476
    const/4 v4, 0x0

    .line 1498
    :goto_3
    return-object v4

    .line 1478
    :cond_4
    const/4 v1, 0x0

    .line 1479
    .local v1, "algo":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1482
    .local v4, "hashed":[B
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1483
    .local v9, "saltedPassword":[B
    const/4 v10, 0x0

    .line 1484
    .local v10, "sha":[B
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1485
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1486
    .local v7, "s":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    const/16 v11, 0x400

    if-ge v5, v11, :cond_5c

    .line 1487
    if-eqz v10, :cond_38

    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1488
    :cond_38
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 1489
    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1490
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 1486
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1492
    :cond_5c
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1494
    .local v2, "e":J
    const-string v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "passwordToHash time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_8a} :catch_8c

    goto/16 :goto_3

    .line 1495
    .end local v2    # "e":J
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "s":J
    .end local v9    # "saltedPassword":[B
    .end local v10    # "sha":[B
    :catch_8c
    move-exception v2

    .line 1496
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public passwordToHashOriginal(Ljava/lang/String;)[B
    .registers 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1457
    if-nez p1, :cond_4

    .line 1458
    const/4 v2, 0x0

    .line 1470
    :goto_3
    return-object v2

    .line 1460
    :cond_4
    const/4 v0, 0x0

    .line 1461
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1463
    .local v2, "hashed":[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1464
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1465
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1466
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 1467
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_51
    move-exception v1

    .line 1468
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public recoverPassword()V
    .registers 3

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 348
    return-void
.end method

.method public removeAppWidget(I)Z
    .registers 8
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2045
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 2047
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_9

    .line 2064
    :cond_8
    :goto_8
    return v4

    .line 2051
    :cond_9
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 2052
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    array-length v5, v3

    if-ge v0, v5, :cond_24

    .line 2053
    aget v5, v3, v0

    if-ne v5, p1, :cond_1a

    .line 2052
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2055
    :cond_1a
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 2059
    aget v5, v3, v0

    aput v5, v2, v1

    .line 2060
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2063
    :cond_24
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 2064
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public removeContextualWidget(I)Z
    .registers 8
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1941
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v3

    .line 1943
    .local v3, "widgets":[I
    if-eqz v3, :cond_a

    array-length v5, v3

    if-nez v5, :cond_b

    .line 1960
    :cond_a
    :goto_a
    return v4

    .line 1947
    :cond_b
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1948
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    array-length v5, v3

    if-ge v0, v5, :cond_26

    .line 1949
    aget v5, v3, v0

    if-ne v5, p1, :cond_1c

    .line 1948
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1951
    :cond_1c
    array-length v5, v2

    if-ge v1, v5, :cond_a

    .line 1955
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1956
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1959
    :cond_26
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeContextualWidgets([I)V

    .line 1960
    const/4 v4, 0x1

    goto :goto_a
.end method

.method public removeRecoveryPasswords()V
    .registers 5

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2399
    return-void
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 652
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 656
    :goto_7
    return-void

    .line 653
    :catch_8
    move-exception v0

    .line 654
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public reportFailedPasswordAttempt()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 357
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Screen unlock failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 361
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Screen unlocked successfully."

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 373
    :try_start_25
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    .line 379
    :cond_31
    :goto_31
    return-void

    .line 374
    :catch_32
    move-exception v6

    .line 375
    .local v6, "re":Landroid/os/RemoteException;
    const-string v0, "MDPP"

    const-string v1, "Failed KeyStore checking"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 2184
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2186
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 2187
    const/4 v1, 0x1

    .line 2192
    :goto_14
    return v1

    .line 2189
    :catch_15
    move-exception v1

    .line 2192
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public resumeVoIPCall()V
    .registers 5

    .prologue
    .line 2198
    :try_start_0
    const-string/jumbo v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 2199
    .local v1, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_18

    .line 2200
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "moveVoIPToTop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 2206
    .end local v1    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_18
    :goto_18
    return-void

    .line 2203
    :catch_19
    move-exception v0

    .line 2204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "resumeVoIPCall() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2539
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    .line 2540
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2545
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2550
    :goto_7
    return-void

    .line 2546
    :catch_8
    move-exception v0

    .line 2548
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveLockFingerprint()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 2419
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2420
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockFingerprintEnabled(Z)V

    .line 2421
    const-string v1, "lockscreen.password_type"

    const-wide/32 v3, 0x11000

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 2422
    const v1, 0x11000

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 2427
    :try_start_21
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_2e

    .line 2432
    :goto_2d
    return-void

    .line 2428
    :catch_2e
    move-exception v10

    .line 2429
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "MDPP"

    const-string v2, "Failed KeyStore checking"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2435
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2436
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2441
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 2442
    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_6f

    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 2443
    const/4 v3, 0x0

    .line 2444
    .local v3, "personaManager":Landroid/os/PersonaManager;
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    check-cast v3, Landroid/os/PersonaManager;

    .line 2445
    .restart local v3    # "personaManager":Landroid/os/PersonaManager;
    if-eqz v3, :cond_76

    .line 2446
    invoke-virtual {v3, p2}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v1

    .line 2447
    .local v1, "parentId":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v7

    invoke-interface {v7, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2449
    if-eq v1, p2, :cond_37

    .line 2450
    const-string v7, "LockPatternUtils"

    const-string v8, "Propagate saveLockFingerprintPassword to all of personas!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_37
    invoke-virtual {v3, v1}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 2454
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_76

    .line 2455
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_76

    .line 2456
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2457
    .local v2, "personaId":I
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockFingerprintPassword for personaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v7

    invoke-interface {v7, p1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2455
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 2463
    .end local v0    # "k":I
    .end local v1    # "parentId":I
    .end local v2    # "personaId":I
    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6f
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_76} :catch_77

    .line 2469
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_76
    :goto_76
    return-void

    .line 2466
    :catch_77
    move-exception v5

    .line 2467
    .local v5, "re":Landroid/os/RemoteException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save Fingerprint lock password "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method public saveLockParentControlPassword(Ljava/lang/String;I)V
    .registers 8
    .param p1, "spare"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2621
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 2624
    .local v0, "hash":[B
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 2630
    :goto_f
    return-void

    .line 2626
    :catch_10
    move-exception v1

    .line 2628
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock parent control password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1169
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1170
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1182
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZI)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 1186
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZI)V

    .line 1187
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSignature"    # Z

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZI)V

    .line 1192
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZI)V
    .registers 39
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSignature"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 1205
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v4, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 1207
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1a6

    .line 1208
    if-nez p5, :cond_16

    .line 1210
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 1212
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    .line 1214
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 1215
    .local v25, "computedQuality":I
    if-nez p3, :cond_116

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 1217
    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1218
    if-eqz v25, :cond_e6

    .line 1219
    const/4 v6, 0x0

    .line 1220
    .local v6, "letters":I
    const/4 v7, 0x0

    .line 1221
    .local v7, "uppercase":I
    const/4 v8, 0x0

    .line 1222
    .local v8, "lowercase":I
    const/4 v9, 0x0

    .line 1223
    .local v9, "numbers":I
    const/4 v10, 0x0

    .line 1224
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 1225
    .local v11, "nonletter":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_8c

    .line 1226
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 1227
    .local v24, "c":C
    const/16 v4, 0x41

    move/from16 v0, v24

    if-lt v0, v4, :cond_65

    const/16 v4, 0x5a

    move/from16 v0, v24

    if-gt v0, v4, :cond_65

    .line 1228
    add-int/lit8 v6, v6, 0x1

    .line 1229
    add-int/lit8 v7, v7, 0x1

    .line 1225
    :goto_62
    add-int/lit8 v29, v29, 0x1

    goto :goto_42

    .line 1230
    :cond_65
    const/16 v4, 0x61

    move/from16 v0, v24

    if-lt v0, v4, :cond_76

    const/16 v4, 0x7a

    move/from16 v0, v24

    if-gt v0, v4, :cond_76

    .line 1231
    add-int/lit8 v6, v6, 0x1

    .line 1232
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 1233
    :cond_76
    const/16 v4, 0x30

    move/from16 v0, v24

    if-lt v0, v4, :cond_87

    const/16 v4, 0x39

    move/from16 v0, v24

    if-gt v0, v4, :cond_87

    .line 1234
    add-int/lit8 v9, v9, 0x1

    .line 1235
    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    .line 1237
    :cond_87
    add-int/lit8 v10, v10, 0x1

    .line 1238
    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    .line 1241
    .end local v24    # "c":C
    :cond_8c
    move/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1269
    .end local v6    # "letters":I
    .end local v7    # "uppercase":I
    .end local v8    # "lowercase":I
    .end local v9    # "numbers":I
    .end local v10    # "symbols":I
    .end local v11    # "nonletter":I
    .end local v29    # "i":I
    :goto_9d
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v4

    if-nez v4, :cond_c7

    .line 1273
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 1274
    .local v30, "passwordHistory":Ljava/lang/String;
    if-nez v30, :cond_b4

    .line 1275
    new-instance v30, Ljava/lang/String;

    .end local v30    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v30 .. v30}, Ljava/lang/String;-><init>()V

    .line 1277
    .restart local v30    # "passwordHistory":Ljava/lang/String;
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v31

    .line 1278
    .local v31, "passwordHistoryLength":I
    if-nez v31, :cond_155

    .line 1279
    const-string v30, ""

    .line 1292
    :goto_bc
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p5

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1300
    .end local v25    # "computedQuality":I
    .end local v30    # "passwordHistory":Ljava/lang/String;
    .end local v31    # "passwordHistoryLength":I
    :cond_c7
    :goto_c7
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 1301
    new-instance v26, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1302
    .local v26, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1303
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 1310
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v26    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_e5
    :goto_e5
    return-void

    .line 1246
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v25    # "computedQuality":I
    :cond_e6
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f9} :catch_fa

    goto :goto_9d

    .line 1306
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v25    # "computedQuality":I
    :catch_fa
    move-exception v32

    .line 1308
    .local v32, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to save lock password "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 1252
    .end local v32    # "re":Landroid/os/RemoteException;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v25    # "computedQuality":I
    :cond_116
    if-eqz p4, :cond_14e

    .line 1253
    const v13, 0x9000

    .line 1254
    .local v13, "passwordQuality":I
    :try_start_11b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishSignature()V

    .line 1260
    :goto_11e
    const-string v4, "lockscreen.password_type"

    int-to-long v14, v13

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1261
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1263
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p5

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_9d

    .line 1257
    .end local v13    # "passwordQuality":I
    :cond_14e
    const v13, 0x8000

    .line 1258
    .restart local v13    # "passwordQuality":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    goto :goto_11e

    .line 1281
    .end local v13    # "passwordQuality":I
    .restart local v30    # "passwordHistory":Ljava/lang/String;
    .restart local v31    # "passwordHistoryLength":I
    :cond_155
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v27

    .line 1282
    .local v27, "hash":[B
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1283
    .local v28, "hashString":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18c

    .line 1284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1288
    :cond_18c
    const/4 v4, 0x0

    move-object/from16 v0, v27

    array-length v5, v0

    mul-int v5, v5, v31

    add-int v5, v5, v31

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_bc

    .line 1295
    .end local v25    # "computedQuality":I
    .end local v27    # "hash":[B
    .end local v28    # "hashString":Ljava/lang/String;
    .end local v30    # "passwordHistory":Ljava/lang/String;
    .end local v31    # "passwordHistoryLength":I
    :cond_1a6
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v3

    move/from16 v23, p5

    invoke-virtual/range {v14 .. v23}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_1bb} :catch_fa

    goto/16 :goto_c7
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 1016
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 4
    .param p2, "isFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZ)V

    .line 1025
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZ)V
    .registers 5
    .param p2, "isFallback"    # Z
    .param p3, "isSignature"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZZ)V

    .line 1035
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZZ)V
    .registers 20
    .param p2, "isFallback"    # Z
    .param p3, "isSignature"    # Z
    .param p4, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LockPatternUtils.saveLockPattern() isFallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSignature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSmartUnlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :try_start_32
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 1049
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_d9

    .line 1050
    const-string v3, "lockscreen.patterneverchosen"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1051
    const/high16 v3, 0x10000

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    .line 1052
    if-nez p2, :cond_73

    .line 1053
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 1054
    const-string v3, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1055
    const/high16 v2, 0x10000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1083
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_72
    return-void

    .line 1059
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_73
    if-eqz p4, :cond_af

    .line 1060
    const v2, 0x9100

    .line 1068
    .local v2, "passwordQuality":I
    :goto_78
    const-string v3, "lockscreen.password_type"

    int-to-long v4, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1069
    const-string v3, "lockscreen.password_type_alternate"

    const-wide/32 v4, 0x10000

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1071
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_94} :catch_95
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_94} :catch_b8

    goto :goto_72

    .line 1078
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "passwordQuality":I
    :catch_95
    move-exception v14

    .line 1079
    .local v14, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t save lock pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1061
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_af
    if-eqz p3, :cond_d2

    .line 1062
    const v2, 0x9000

    .line 1063
    .restart local v2    # "passwordQuality":I
    :try_start_b4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishSignature()V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b7} :catch_95
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_78

    .line 1080
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "passwordQuality":I
    :catch_b8
    move-exception v13

    .line 1081
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t save lock pattern  2 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1065
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_d2
    const v2, 0x8000

    .line 1066
    .restart local v2    # "passwordQuality":I
    :try_start_d5
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    goto :goto_78

    .line 1075
    .end local v2    # "passwordQuality":I
    :cond_d9
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v12

    move-object v3, v1

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_e9} :catch_95
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e9} :catch_b8

    goto :goto_72
.end method

.method public saveLockSKTPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2554
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSKTPassword(Ljava/lang/String;I)V

    .line 2555
    return-void
.end method

.method public saveLockSKTPassword(Ljava/lang/String;I)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2560
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockSKTPassword(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2565
    :goto_7
    return-void

    .line 2561
    :catch_8
    move-exception v0

    .line 2563
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock SKT Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveLockSmartUnlock()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 2951
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2952
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "lockscreen.password_type"

    const-wide/32 v3, 0x9100

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 2953
    const v1, 0x9100

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 2955
    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3095
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3097
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 3102
    :goto_b
    return-void

    .line 3098
    :catch_c
    move-exception v0

    .line 3100
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockBackupPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 3065
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3067
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 3072
    :goto_b
    return-void

    .line 3068
    :catch_c
    move-exception v0

    .line 3070
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3009
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3011
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 3016
    :goto_b
    return-void

    .line 3012
    :catch_c
    move-exception v0

    .line 3014
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPattern(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3037
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3039
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 3043
    :goto_f
    return-void

    .line 3040
    :catch_10
    move-exception v0

    .line 3041
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public savePersonalModeLockPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2980
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2982
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2987
    :goto_b
    return-void

    .line 2983
    :catch_c
    move-exception v0

    .line 2985
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public saveSignatureBackupPin(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2268
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;I)V

    .line 2269
    return-void
.end method

.method public saveSignatureBackupPin(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2273
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 2275
    .local v0, "hash":[B
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureBackupPin([BI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2280
    :goto_b
    return-void

    .line 2276
    :catch_c
    move-exception v1

    .line 2278
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save signature lock Backup PIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public saveSignatureLockInfo([B)V
    .registers 6
    .param p1, "info"    # [B

    .prologue
    .line 2241
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/widget/ILockSettings;->setSignatureInfo([BI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2245
    :goto_b
    return-void

    .line 2242
    :catch_c
    move-exception v0

    .line 2243
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savedBackupPinExists()Z
    .registers 4

    .prologue
    .line 808
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 810
    :goto_c
    return v1

    .line 809
    :catch_d
    move-exception v0

    .line 810
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedFingerprintPasswordExists()Z
    .registers 2

    .prologue
    .line 2500
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists(I)Z

    move-result v0

    return v0
.end method

.method public savedFingerprintPasswordExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2505
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFingerprintPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2507
    :goto_8
    return v1

    .line 2506
    :catch_9
    move-exception v0

    .line 2507
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public savedParentControlPasswordExists()Z
    .registers 4

    .prologue
    .line 2587
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2589
    :goto_c
    return v1

    .line 2588
    :catch_d
    move-exception v0

    .line 2589
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPasswordExists()Z
    .registers 4

    .prologue
    .line 796
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 798
    :goto_c
    return v1

    .line 797
    :catch_d
    move-exception v0

    .line 798
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPatternExists()Z
    .registers 4

    .prologue
    .line 784
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 786
    :goto_c
    return v1

    .line 785
    :catch_d
    move-exception v0

    .line 786
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPersonalModeBackupPinExists()Z
    .registers 4

    .prologue
    .line 3085
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3087
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3089
    :goto_c
    return v2

    .line 3088
    :catch_d
    move-exception v0

    .line 3089
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .registers 4

    .prologue
    .line 3114
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3116
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3118
    :goto_c
    return v2

    .line 3117
    :catch_d
    move-exception v0

    .line 3118
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePasswordExists()Z
    .registers 4

    .prologue
    .line 3028
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3030
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3032
    :goto_c
    return v2

    .line 3031
    :catch_d
    move-exception v0

    .line 3032
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePatternExists()Z
    .registers 4

    .prologue
    .line 3055
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3057
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3059
    :goto_c
    return v2

    .line 3058
    :catch_d
    move-exception v0

    .line 3059
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePinExists()Z
    .registers 4

    .prologue
    .line 2999
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 3001
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3003
    :goto_c
    return v2

    .line 3002
    :catch_d
    move-exception v0

    .line 3003
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedSKTPasswordExists()Z
    .registers 4

    .prologue
    .line 820
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveSKTPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 822
    :goto_c
    return v1

    .line 821
    :catch_d
    move-exception v0

    .line 822
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedSignatureExists()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2249
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->haveSignature(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->haveSignatureBackupPin(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    .line 2252
    :cond_1e
    :goto_1e
    return v1

    .line 2251
    :catch_1f
    move-exception v0

    .line 2252
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1e
.end method

.method public setBeforeTimeout(Z)V
    .registers 2
    .param p1, "beforeTimeout"    # Z

    .prologue
    .line 2571
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mBeforeTimeout:Z

    .line 2572
    return-void
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .prologue
    .line 1611
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1613
    .local v0, "currentFlag":J
    if-eqz p1, :cond_14

    .line 1614
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1618
    .local v2, "newFlag":J
    :goto_e
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1619
    return-void

    .line 1616
    .end local v2    # "newFlag":J
    :cond_14
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_e
.end method

.method public setCACPasswordEnabled(Z)Z
    .registers 3
    .param p1, "status"    # Z

    .prologue
    .line 401
    const-string v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockPlusEnabled(Ljava/lang/String;)V
    .registers 13
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 2739
    const/4 v0, 0x0

    .line 2741
    .local v0, "bufW":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2743
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 2744
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 2746
    .local v7, "status":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2747
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2748
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2749
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    .end local v7    # "status":Z
    :cond_3a
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2753
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_57

    .line 2754
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2755
    const-string v8, "LockPatternUtils"

    const-string/jumbo v9, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_57} :catch_86
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_57} :catch_a0

    .line 2765
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    :cond_57
    :goto_57
    :try_start_57
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_63} :catch_ba
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_de

    .line 2766
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .local v1, "bufW":Ljava/io/BufferedWriter;
    :try_start_63
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2768
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufW.write + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_84} :catch_105
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_84} :catch_102

    move-object v0, v1

    .line 2789
    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    :goto_85
    return-void

    .line 2758
    :catch_86
    move-exception v4

    .line 2759
    .local v4, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2760
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v2

    .line 2761
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2770
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v4

    .line 2771
    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_bb
    if-eqz v0, :cond_c0

    .line 2773
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d9

    .line 2778
    :cond_c0
    :goto_c0
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2774
    :catch_d9
    move-exception v3

    .line 2775
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c0

    .line 2779
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_de
    move-exception v2

    .line 2780
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_df
    if-eqz v0, :cond_e4

    .line 2782
    :try_start_e1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fd

    .line 2787
    :cond_e4
    :goto_e4
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2783
    :catch_fd
    move-exception v3

    .line 2784
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e4

    .line 2779
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_102
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_df

    .line 2770
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_105
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_bb
.end method

.method public setCarrierLockPlusOnOff(Ljava/lang/String;)V
    .registers 13
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 2792
    const/4 v0, 0x0

    .line 2794
    .local v0, "bufW":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2796
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 2797
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 2799
    .local v7, "status":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2800
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2801
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2802
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    .end local v7    # "status":Z
    :cond_3a
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2806
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_57

    .line 2807
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2808
    const-string v8, "LockPatternUtils"

    const-string/jumbo v9, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_57} :catch_86
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_57} :catch_a0

    .line 2818
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    :cond_57
    :goto_57
    :try_start_57
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_63} :catch_ba
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_de

    .line 2819
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .local v1, "bufW":Ljava/io/BufferedWriter;
    :try_start_63
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2821
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufW.write + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_84} :catch_105
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_84} :catch_102

    move-object v0, v1

    .line 2842
    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    :goto_85
    return-void

    .line 2811
    :catch_86
    move-exception v4

    .line 2812
    .local v4, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2813
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v2

    .line 2814
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2823
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v4

    .line 2824
    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_bb
    if-eqz v0, :cond_c0

    .line 2826
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d9

    .line 2831
    :cond_c0
    :goto_c0
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2827
    :catch_d9
    move-exception v3

    .line 2828
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c0

    .line 2832
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_de
    move-exception v2

    .line 2833
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_df
    if-eqz v0, :cond_e4

    .line 2835
    :try_start_e1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fd

    .line 2840
    :cond_e4
    :goto_e4
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2836
    :catch_fd
    move-exception v3

    .line 2837
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e4

    .line 2832
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_102
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_df

    .line 2823
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_105
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_bb
.end method

.method public setCurrentUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 615
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 617
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 618
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 619
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 620
    .local v1, "personaManager":Landroid/os/PersonaManager;
    sget v3, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 621
    const-string/jumbo v3, "persona_policy"

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaPolicyManager;

    .line 622
    .local v0, "manager":Landroid/os/PersonaPolicyManager;
    if-eqz v0, :cond_5e

    .line 623
    invoke-virtual {v0, p1}, Landroid/os/PersonaPolicyManager;->getPasswordLockPolicy(I)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 624
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentUser: clearing Lock for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 626
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 636
    .end local v0    # "manager":Landroid/os/PersonaPolicyManager;
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_5e
    :goto_5e
    return-void

    .line 628
    .restart local v0    # "manager":Landroid/os/PersonaPolicyManager;
    .restart local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_5f
    const-string v3, "lockscreen.disabled"

    invoke-direct {p0, v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_5e

    .line 629
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    goto :goto_5e
.end method

.method public setLockAsSignature(Z)V
    .registers 12
    .param p1, "showFinishScreen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2258
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "lockscreen.password_type"

    const-wide/32 v3, 0x9000

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 2259
    const v1, 0x9000

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 2262
    if-eqz p1, :cond_22

    .line 2263
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishSignature()V

    .line 2265
    :cond_22
    return-void
.end method

.method public setLockFingerprintEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2522
    const-string v0, "lock_fingerprint_autolock"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2523
    return-void
.end method

.method public setLockFingerprintEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2526
    const-string v0, "lock_fingerprint_autolock"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2527
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1648
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1649
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    .line 962
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x1

    :goto_6
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 963
    return-void

    .line 962
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1725
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1726
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1086
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1087
    return-void
.end method

.method public setOwnerInfoEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1090
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1091
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 1780
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1781
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2306
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 2307
    return-void
.end method

.method public setRecoveryLock(Z)V
    .registers 6
    .param p1, "showRecovery"    # Z

    .prologue
    .line 2414
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    .line 2415
    .local v0, "isRecovery":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_Recovery_enabled"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2416
    return-void

    .line 2414
    .end local v0    # "isRecovery":I
    :cond_f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSKTLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 1749
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1750
    return-wide v0
.end method

.method public setSignatureVerificationLevel(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 2297
    const-string v0, "lock_signature_verification_level"

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 2298
    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1707
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1708
    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2958
    sput-boolean p1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 2959
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 1686
    :goto_8
    return-void

    .line 1685
    :cond_9
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_8
.end method

.method public setVisibleSignatureEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1692
    const-string v0, "lock_signature_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1693
    return-void
.end method

.method public setWidgetsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(ZI)V

    .line 2348
    return-void
.end method

.method public setWidgetsEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2351
    const-string v0, "lockscreen.widgets_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2352
    return-void
.end method

.method public showCardNotRegisteredDialog()V
    .registers 4

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 494
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "showCardNotRegisteredDialog called "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZZ)V
    .registers 10
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "phoneState"    # I
    .param p3, "shown"    # Z
    .param p4, "showIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2156
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz p3, :cond_1e

    .line 2157
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    const/4 v4, 0x2

    if-ne p2, v4, :cond_26

    .line 2166
    const v2, 0x104057c

    .line 2167
    .local v2, "textId":I
    if-eqz p4, :cond_24

    const v1, 0x1080084

    .line 2168
    .local v1, "phoneCallIcon":I
    :goto_17
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2174
    .end local v1    # "phoneCallIcon":I
    :goto_1a
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2175
    .end local v2    # "textId":I
    :goto_1d
    return-void

    .line 2159
    :cond_1e
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .restart local v2    # "textId":I
    :cond_24
    move v1, v3

    .line 2167
    goto :goto_17

    .line 2170
    .end local v2    # "textId":I
    :cond_26
    const v2, 0x104057b

    .line 2171
    .restart local v2    # "textId":I
    if-eqz p4, :cond_32

    const v0, 0x1080456

    .line 2172
    .local v0, "emergencyIcon":I
    :goto_2e
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1a

    .end local v0    # "emergencyIcon":I
    :cond_32
    move v0, v3

    .line 2171
    goto :goto_2e
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 1340
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1342
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public usingSignatureUnlock()Z
    .registers 5

    .prologue
    .line 1349
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1351
    .local v0, "quality":I
    const v1, 0x9000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public usingSmartUnlock()Z
    .registers 5

    .prologue
    .line 1358
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1360
    .local v0, "quality":I
    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_13

    const v1, 0x9100

    if-ne v0, v1, :cond_15

    .line 1362
    :cond_13
    const/4 v1, 0x1

    .line 1364
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public wipeContextualWidgets()V
    .registers 5

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_contextual_widget_ids"

    const-string v2, ""

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1971
    return-void
.end method

.method public writeContextualWidgets([I)V
    .registers 6
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_contextual_widget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1966
    return-void
.end method

.method public writeFallbackAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1904
    return-void
.end method

.method public writeShortcutAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_shortcut_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2012
    return-void
.end method
