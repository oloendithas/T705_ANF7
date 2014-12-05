.class public Lcom/android/keyguard/sec/SecMyProfile;
.super Landroid/widget/LinearLayout;
.source "SecMyProfile.java"


# static fields
.field private static mDefaultProfile:Ljava/lang/String;

.field private static sTypeFaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarm:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mProfileAmpm:Landroid/widget/TextClock;

.field private mProfileDate:Landroid/widget/TextView;

.field private mProfileDefaultTypeface:Landroid/graphics/Typeface;

.field private mProfileText:Landroid/widget/TextView;

.field private mProfileTime:Landroid/widget/TextClock;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    .line 56
    const-string v0, "Personal message"

    sput-object v0, Lcom/android/keyguard/sec/SecMyProfile;->mDefaultProfile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecMyProfile$2;-><init>(Lcom/android/keyguard/sec/SecMyProfile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mContentObserver:Landroid/database/ContentObserver;

    .line 98
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecMyProfile$3;-><init>(Lcom/android/keyguard/sec/SecMyProfile;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecMyProfile$2;-><init>(Lcom/android/keyguard/sec/SecMyProfile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mContentObserver:Landroid/database/ContentObserver;

    .line 98
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecMyProfile$3;-><init>(Lcom/android/keyguard/sec/SecMyProfile;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecMyProfile$1;-><init>(Lcom/android/keyguard/sec/SecMyProfile;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecMyProfile$2;-><init>(Lcom/android/keyguard/sec/SecMyProfile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mContentObserver:Landroid/database/ContentObserver;

    .line 98
    new-instance v0, Lcom/android/keyguard/sec/SecMyProfile$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecMyProfile$3;-><init>(Lcom/android/keyguard/sec/SecMyProfile;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecMyProfile;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecMyProfile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->updateProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecMyProfile;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecMyProfile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 302
    iget-object v2, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x1

    .line 308
    :goto_33
    return v1

    .line 305
    :cond_34
    iget-object v2, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private isTravelWallpaperSet()Z
    .registers 5

    .prologue
    .line 289
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "wallpaperPath":Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "/com.samsung.android.service.travel/files/images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecMyProfile;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 292
    const/4 v1, 0x1

    .line 294
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private refreshAlarm()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "nextAlarm":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mAlarm:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0600d2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_2c
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshAlarm(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecMyProfile;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 256
    :cond_4b
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mAlarm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c
.end method

.method private refreshOwnerInfo()V
    .registers 5

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_5

    .line 269
    :cond_4
    :goto_4
    return-void

    .line 265
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 266
    .local v0, "ownerInfoEnabled":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    .line 266
    :cond_24
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private refreshTravelInfo()V
    .registers 5

    .prologue
    .line 273
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 286
    :cond_a
    :goto_a
    return-void

    .line 276
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->isTravelWallpaperSet()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 277
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 284
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_43
    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private updateProfile()V
    .registers 15

    .prologue
    .line 149
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_text_color"

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 150
    .local v7, "profileColor":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_background_color"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 151
    .local v6, "profileBgColor":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_information"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "profile":Ljava/lang/String;
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_font_package"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "font_pkg":Ljava/lang/String;
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_font_filename"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "font_file":Ljava/lang/String;
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "show_clock"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f1

    const/4 v3, 0x1

    .line 158
    .local v3, "isClockOn":Z
    :goto_55
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_date_and_year"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f4

    const/4 v4, 0x1

    .line 161
    .local v4, "isDateOn":Z
    :goto_67
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v8, v10

    .line 162
    .local v8, "profileSize":F
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "my_profile_text_size"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "tmp":Ljava/lang/String;
    if-eqz v9, :cond_88

    .line 164
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 166
    :cond_88
    if-eqz v5, :cond_92

    sget-object v10, Lcom/android/keyguard/sec/SecMyProfile;->mDefaultProfile:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 168
    :cond_92
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x7f060119

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    :cond_9b
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/SecMyProfile;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    iget-object v10, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileDate:Landroid/widget/TextView;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v11, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileDate:Landroid/widget/TextView;

    if-eqz v4, :cond_f7

    const/4 v10, 0x0

    :goto_d4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v11, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileTime:Landroid/widget/TextClock;

    if-eqz v3, :cond_fa

    const/4 v10, 0x0

    :goto_dc
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v11, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileAmpm:Landroid/widget/TextClock;

    if-eqz v3, :cond_fd

    const/4 v10, 0x0

    :goto_e4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->refreshAlarm()V

    .line 189
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->refreshOwnerInfo()V

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->refreshTravelInfo()V

    .line 191
    return-void

    .line 156
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "isClockOn":Z
    .end local v4    # "isDateOn":Z
    .end local v8    # "profileSize":F
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_f1
    const/4 v3, 0x0

    goto/16 :goto_55

    .line 158
    .restart local v3    # "isClockOn":Z
    :cond_f4
    const/4 v4, 0x0

    goto/16 :goto_67

    .line 183
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "isDateOn":Z
    .restart local v8    # "profileSize":F
    .restart local v9    # "tmp":Ljava/lang/String;
    :cond_f7
    const/16 v10, 0x8

    goto :goto_d4

    .line 185
    :cond_fa
    const/16 v10, 0x8

    goto :goto_dc

    .line 186
    :cond_fd
    const/16 v10, 0x8

    goto :goto_e4
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "fontContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 196
    .local v4, "typeface":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v6, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 199
    sget-object v5, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 245
    :goto_35
    return-object v5

    .line 202
    :cond_36
    :try_start_36
    const-string v6, "Lindsey"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 203
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "lindsey_font":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 205
    const-string v6, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 206
    sget-object v6, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_56} :catch_58

    move-object v5, v4

    .line 207
    goto :goto_35

    .line 210
    .end local v3    # "lindsey_font":Ljava/io/File;
    :catch_58
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface Lindsey, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_71
    :try_start_71
    const-string v6, "DroidSerif-Italic"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 216
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/fonts/DroidSerif-Italic.ttf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "droid_font":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 218
    const-string v6, "/system/fonts/DroidSerif-Italic.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 219
    sget-object v6, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_91} :catch_93

    move-object v5, v4

    .line 220
    goto :goto_35

    .line 223
    .end local v0    # "droid_font":Ljava/io/File;
    :catch_93
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ac
    sget-object v6, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 228
    sget-object v5, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    goto/16 :goto_35

    .line 232
    :cond_ec
    :try_start_ec
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f2} :catch_11a

    move-result-object v2

    .line 239
    :try_start_f3
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 240
    sget-object v6, Lcom/android/keyguard/sec/SecMyProfile;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_117} :catch_136

    move-object v5, v4

    .line 245
    goto/16 :goto_35

    .line 233
    :catch_11a
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 235
    iget-object v6, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load font package, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_136
    move-exception v1

    .line 242
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecMyProfile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 133
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecMyProfile;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecMyProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecMyProfile;->updateProfile()V

    .line 139
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 110
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileText:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileTime:Landroid/widget/TextClock;

    .line 114
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileAmpm:Landroid/widget/TextClock;

    .line 115
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileDate:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mAlarm:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_58

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 121
    :cond_58
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mTravelText:Landroid/widget/TextView;

    .line 123
    const-string v0, "/system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mClockTypeface:Landroid/graphics/Typeface;

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileTime:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecMyProfile;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    const-string v0, "/system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecMyProfile;->mProfileDefaultTypeface:Landroid/graphics/Typeface;

    .line 128
    return-void
.end method
