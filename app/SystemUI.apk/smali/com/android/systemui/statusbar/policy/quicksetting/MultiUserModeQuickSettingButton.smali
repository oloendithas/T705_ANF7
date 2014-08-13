.class public Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MultiUserModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "STATUSBAR-MultiUserModeQuickSettingButton"


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mText:Landroid/widget/TextView;

.field mUseDefaultAvatar:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f0b012d

    const v1, 0x7f0b00e1

    const v3, 0x7f020047

    const/4 v4, 0x0

    .line 132
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v5, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 74
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUseDefaultAvatar:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    .line 77
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v4

    .line 135
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 148
    :goto_0
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mText:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 154
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserManager:Landroid/os/UserManager;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    .line 157
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->updateDisplayName()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 461
    .local v1, "copy":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 462
    .local v0, "copiedCanvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 464
    return-object v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 445
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 446
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 455
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 449
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 452
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 317
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "queryForUserInformation()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "currentUserContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 321
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 322
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 331
    :goto_0
    if-nez v4, :cond_0

    .line 388
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 327
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 328
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 336
    .local v3, "userId":I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 338
    .local v5, "userName":Ljava/lang/String;
    move-object v0, v1

    .line 339
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$3;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 387
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private setMobileDataMultiUser()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 468
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 469
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 470
    .local v2, "currentUserId":I
    const/4 v4, 0x1

    .line 472
    .local v4, "state":Z
    const/4 v3, 0x0

    .line 473
    .local v3, "isOversea":Z
    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "currentPlmn":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 477
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data_configure"

    invoke-static {v7, v8, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v4, v5

    .line 483
    :goto_0
    const-string v7, "STATUSBAR-MultiUserModeQuickSettingButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileDataMultiUser userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v7, "KOR"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 487
    if-eqz v1, :cond_0

    .line 488
    const-string v7, "oversea"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 489
    const-string v7, "STATUSBAR-MultiUserModeQuickSettingButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileDataMultiUser for oveasea :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    if-nez v3, :cond_5

    .line 495
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 496
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    :goto_2
    return-void

    :cond_1
    move v4, v6

    .line 477
    goto :goto_0

    .line 480
    :cond_2
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user_dependent_mobile_settings"

    invoke-static {v7, v8, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3

    move v4, v6

    :goto_3
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    move v5, v6

    .line 496
    goto :goto_1

    .line 499
    :cond_5
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    if-eqz v4, :cond_6

    :goto_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_4
.end method

.method private setProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 280
    .local v8, "profile":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 305
    :goto_0
    return-void

    .line 285
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 303
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 288
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget v9, p2, Landroid/content/pm/UserInfo;->id:I

    .line 290
    .local v9, "userId":I
    :goto_1
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 292
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "phoneNumber":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 294
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 288
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "userId":I
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_1

    .line 303
    .restart local v6    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v7    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "userId":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 300
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 303
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateDisplayName()V
    .locals 8

    .prologue
    .line 255
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "updateDisplayName"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "currentUserContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 259
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 260
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "android"

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 269
    :goto_0
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_1
    return-void

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "Couldn\'t create user context"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 265
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "Couldn\'t get user info"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->setProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "deinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "onClick(view)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 192
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 193
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 225
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v4, "Couldn\'t show user switcher"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    invoke-static {v3, p1, v4, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 184
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "onClick(state)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public refreshView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 391
    const-string v7, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v8, "refreshView()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 410
    .local v6, "source":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201d2

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 411
    .local v2, "mask":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201d3

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    .local v1, "circle":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 416
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 417
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 418
    .local v5, "resultRect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    invoke-virtual {v0, v6, v10, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 422
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 423
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 424
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 425
    invoke-virtual {v0, v2, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 428
    invoke-virtual {v0, v1, v10, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 431
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    const/4 v6, 0x0

    .line 435
    const/4 v2, 0x0

    .line 436
    const/4 v1, 0x0

    .line 439
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x7f0b00a0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserName:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v1, "reloadUserInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->queryForUserInformation()V

    .line 314
    return-void
.end method
