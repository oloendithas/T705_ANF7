.class public Lcom/touchtype/personalizer/service/FacebookPersonalizer;
.super Lcom/touchtype/personalizer/Personalizer;
.source "FacebookPersonalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/service/FacebookPersonalizer$FacebookUtil;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SIGNINGTYPE_NON_SSO:I = 0x1

.field private static final SIGNINGTYPE_SSO_WITHOUT_FACEBOOKAPP:I = 0x3

.field private static final SIGNINGTYPE_SSO_WITH_FACEBOOKAPP:I = 0x2


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAppID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFaceSigningType:I

.field private mFbForAuthtokenConnection:Landroid/content/ServiceConnection;

.field private mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/Personalizer;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFaceSigningType:I

    .line 39
    iput-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAccessToken:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAppID:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    .line 43
    new-instance v0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;-><init>(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFbForAuthtokenConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object p1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/touchtype/personalizer/service/FacebookPersonalizer;Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;)Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/FacebookPersonalizer;
    .param p1, "x1"    # Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/service/FacebookPersonalizer;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/service/FacebookPersonalizer;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->signInToFacebook(Landroid/app/Activity;)V

    return-void
.end method

.method public static createParams(Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;
    .locals 3
    .param p0, "oauthToken"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v0}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    .line 74
    .local v0, "params":Lcom/touchtype_fluency/service/util/PostParams;
    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "post_on_wall"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method public static createParamsForSSO(Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;
    .locals 3
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v0}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    .line 81
    .local v0, "params":Lcom/touchtype_fluency/service/util/PostParams;
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "post_on_wall"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method private downloadFacebookApp(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "marketIntent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.facebook.katana"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private signInToFacebook(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "fbIntent":Landroid/content/Intent;
    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    const-string v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.sec.android.app.sns3.facebook"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFbForAuthtokenConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    :cond_0
    return-void
.end method

.method public getAccessTokenNExpires()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 229
    :try_start_0
    iget-object v7, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    invoke-interface {v7}, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;->getAuthTokenNExpires()Ljava/util/Map;

    move-result-object v5

    .line 232
    .local v5, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "app_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "AppIdForSSO":Ljava/lang/String;
    const-string v7, "secret_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, "SecretKey":Ljava/lang/String;
    const-string v7, "access_token"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "AccessToken":Ljava/lang/String;
    const-string v7, "expires"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "Expires":Ljava/lang/String;
    iput-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAppID:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAccessToken:Ljava/lang/String;

    .line 240
    iget-object v7, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAppID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAccessToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    .line 241
    const/4 v6, 0x1

    .line 248
    .end local v0    # "AccessToken":Ljava/lang/String;
    .end local v1    # "AppIdForSSO":Ljava/lang/String;
    .end local v2    # "Expires":Ljava/lang/String;
    .end local v3    # "SecretKey":Ljava/lang/String;
    .end local v5    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v6

    .line 246
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getFactbookSigningType()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 298
    :try_start_0
    iget-object v3, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.sns3"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 300
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 308
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 302
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    .line 303
    const/4 v2, 0x3

    goto :goto_0

    .line 305
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 307
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "pref_personalize_facebook"

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "Facebook"

    return-object v0
.end method

.method public getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "fb"

    return-object v0
.end method

.method public showDownloadGuideDialog()V
    .locals 5

    .prologue
    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f0e0000

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 274
    const v2, 0x7f0d01e6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 275
    const v2, 0x7f0d0222

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v2, 0x104000a

    new-instance v3, Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;

    invoke-direct {v3, p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;-><init>(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    const v2, 0x7f0d01d1

    new-instance v3, Lcom/touchtype/personalizer/service/FacebookPersonalizer$3;

    invoke-direct {v3, p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$3;-><init>(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 293
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 294
    return-void
.end method

.method public startPersonalization(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getFactbookSigningType()I

    move-result v0

    iput v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFaceSigningType:I

    .line 90
    iget v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFaceSigningType:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-virtual {p0, v1, v3}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$FacebookUtil;->isLoggedInFacebook(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-static {p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$FacebookUtil;->isFacebookAppInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-static {p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$FacebookUtil;->isLoggedInGoogle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->showDownloadGuideDialog()V

    .line 110
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->downloadFacebookApp(Landroid/app/Activity;)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->signInToFacebook(Landroid/app/Activity;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFbForAuthtokenConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getAccessTokenNExpires()Z

    .line 119
    invoke-virtual {p0, v3, v3}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-static {p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer$FacebookUtil;->isLoggedInFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFbForAuthtokenConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getAccessTokenNExpires()Z

    .line 132
    invoke-virtual {p0, v3, v3}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    goto :goto_0

    .line 136
    :cond_5
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->signInToFacebook(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0, v3, v1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startPersonalization(ZZ)V
    .locals 4
    .param p1, "useSSO"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 254
    iget v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mFaceSigningType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 256
    iget-object v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v1

    .line 257
    .local v1, "keyManager":Lcom/touchtype/personalizer/PersonalizationKeyManager;
    iget-object v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAppID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->setApiKey(Ljava/lang/String;)V

    .line 260
    .end local v1    # "keyManager":Lcom/touchtype/personalizer/PersonalizationKeyManager;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "service"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getServiceId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v2, "Enable"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v2, "UseSSO"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v2, "AccessToken"

    iget-object v3, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v2, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getServiceId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method
