.class public Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;
    }
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x0

.field private static final MSG_NOT_SUPPORT_RECOMMEND:I = 0x1

.field private static final MSG_SHOW_PROCESS_DIALOG:I = 0x3

.field private static final MSG_SUPPORT_RECOMMEND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RingtoneRecommendationHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingTwoPanes:Z

.field private mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

.field private mOffset:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecommendUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;-><init>(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    .line 93
    iput-object p2, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    .line 94
    iput-object p3, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->returnResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mOffset:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private returnResult()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;->onRingtoneRecommend(Landroid/net/Uri;)V

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public doExtract()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mIsUsingTwoPanes:Z

    .line 107
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/audio/Smat;

    invoke-direct {v1}, Lcom/samsung/audio/Smat;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance v1, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;-><init>(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)V

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->start()V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    .line 99
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    .line 103
    return-void
.end method
