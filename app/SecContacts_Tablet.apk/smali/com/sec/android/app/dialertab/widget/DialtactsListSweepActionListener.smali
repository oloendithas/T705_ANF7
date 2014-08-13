.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialtactsListSweepActionListener"

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I

.field private static checkVolteVTicon:Z

.field private static isVideoCall:Z


# instance fields
.field private final MOBILE_DATA_DISABLED:I

.field private final VIDEO_CALL_DISABLED:I

.field private final VOICE_CALL_OVER_LTE_DISABLED:I

.field csc:Ljava/lang/String;

.field private mAdapter:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mLogType:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-boolean v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVideoCall:Z

    .line 94
    sput-boolean v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->checkVolteVTicon:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "listView"    # Lcom/sec/android/touchwiz/widget/TwListView;
    .param p4, "sweepActionBarCallBack"    # Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    .local p5, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Landroid/widget/Adapter;)V

    .line 122
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mFragment:Landroid/app/Fragment;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Landroid/widget/Adapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/sec/android/touchwiz/widget/TwListView;
    .param p3, "sweepActionBarCallBack"    # Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    .local p4, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v2, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->VOICE_CALL_OVER_LTE_DISABLED:I

    .line 91
    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->VIDEO_CALL_DISABLED:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->MOBILE_DATA_DISABLED:I

    .line 95
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->csc:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 107
    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 108
    iput-object p4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mAdapter:Landroid/widget/Adapter;

    .line 111
    const-string v0, "feature_volte_support_videocall"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sput-boolean v2, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->checkVolteVTicon:Z

    .line 113
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->checkVolteVTicon:Z

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 117
    :cond_1
    return-void
.end method

.method private isDataEnabled()Z
    .locals 10

    .prologue
    .line 317
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const/4 v3, 0x0

    .line 318
    .local v3, "haveConnectedWifi":Z
    const/4 v2, 0x0

    .line 320
    .local v2, "haveConnectedMobile":Z
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 321
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 322
    .local v6, "netInfo":[Landroid/net/NetworkInfo;
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 323
    .local v7, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 324
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    const/4 v3, 0x1

    .line 326
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 327
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    const/4 v2, 0x1

    .line 322
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isVideoCallEnabled()Z
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceOverLTEEnabled()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const/4 v4, 0x0

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "isVolteEnabled":Z
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, "voicecallTypeValue":I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 250
    .local v0, "isImsVoLTEEnabled":Z
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v1

    .line 251
    .local v1, "isImsVoLTEVideoEnabled":Z
    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 253
    :goto_0
    const-string v4, "DialtactsListSweepActionListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsVoLTEEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isImsVoLTEVideoEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isVoLTEEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "isImsVoLTEEnabled":Z
    .end local v1    # "isImsVoLTEVideoEnabled":Z
    .end local v3    # "voicecallTypeValue":I
    :cond_0
    return v2

    .restart local v0    # "isImsVoLTEEnabled":Z
    .restart local v1    # "isImsVoLTEVideoEnabled":Z
    .restart local v3    # "voicecallTypeValue":I
    :cond_1
    move v2, v4

    .line 251
    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 267
    move-object v0, p0

    .line 269
    .local v0, "aa":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 270
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 273
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 276
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 278
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 279
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 281
    :cond_3
    :goto_4
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 282
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 284
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private placeVideoCall()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const/4 v4, 0x0

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    const-string v2, "DialtactsListSweepActionListener"

    const-string v3, "In placeVideoCall method"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    const-string v2, "DialtactsListSweepActionListener"

    const-string v3, "Out placeVideoCall method"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :goto_1
    return-void

    .line 297
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v3, "Enter Valid Number"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3
    .param p1, "itemIndex"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const-string v0, "DialtactsListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 9
    .param p1, "itemIndex"    # I
    .param p2, "flickDirection"    # I

    .prologue
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const/4 v8, 0x1

    .line 132
    const-string v5, "DialtactsListSweepActionListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flickDirection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v4, 0x0

    .line 135
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "listItem":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    :cond_0
    const v5, 0x7f090222

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "str":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 139
    .restart local v4    # "str":Ljava/lang/String;
    iput-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 159
    :cond_3
    if-nez p2, :cond_9

    .line 160
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v6, "0009"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    sget-boolean v5, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->checkVolteVTicon:Z

    if-eqz v5, :cond_8

    .line 166
    sget-boolean v5, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVideoCall:Z

    if-eqz v5, :cond_7

    .line 170
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isDataEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 172
    new-instance v5, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 173
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVoiceOverLTEEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 175
    new-instance v5, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 176
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVideoCallEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 178
    new-instance v5, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 181
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->placeVideoCall()V

    goto :goto_0

    .line 186
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_9
    if-ne v8, p2, :cond_b

    .line 191
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v6, "0010"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    const-string v5, "feature_kdi"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 194
    const-string v5, "DialtactsListSweepActionListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DIRECTION_RIGHT_TO_LEFT() / flickDirection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "mVoiceMailNumber":Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 198
    .local v2, "mPhoneNumberHelper":Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 199
    .local v0, "isVoicemailNumber":Z
    const-string v5, "DialtactsListSweepActionListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoicemailNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mVoiceMailNumber :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v5, "DialtactsListSweepActionListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoicemailNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mPhoneNumber :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v0, :cond_a

    .line 202
    const-string v5, "DialtactsListSweepActionListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cloaseAllActionBar isVoicemailNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mVoiceMailNumber :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0

    .line 209
    .end local v0    # "isVoicemailNumber":Z
    .end local v2    # "mPhoneNumberHelper":Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .end local v3    # "mVoiceMailNumber":Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 8
    .param p1, "itemIndex"    # I

    .prologue
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const v7, 0x7f0900ee

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "listItem":Landroid/view/View;
    const/4 v1, 0x0

    .line 342
    .local v1, "tv":Landroid/widget/TextView;
    sget-boolean v2, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->checkVolteVTicon:Z

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 345
    .restart local v1    # "tv":Landroid/widget/TextView;
    const v2, 0x7f0e03cb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    .line 346
    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting isVideoCall true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_3

    .line 349
    :cond_0
    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting isVideoCall true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->changCallIconandText(Z)V

    .line 351
    sput-boolean v6, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVideoCall:Z

    .line 358
    :goto_0
    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logtypes is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mLogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v2, :cond_4

    .line 362
    const v2, 0x7f090222

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 366
    .restart local v1    # "tv":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "NTT DOCOMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 390
    :goto_2
    return-void

    .line 353
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->changCallIconandText(Z)V

    .line 354
    sput-boolean v5, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->isVideoCall:Z

    goto/16 :goto_0

    .line 364
    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "tv":Landroid/widget/TextView;
    goto/16 :goto_1

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_2
.end method

.method public setImsLowSignalHelper(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;)V
    .locals 0
    .param p1, "imsLowSignalHelper"    # Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    .prologue
    .line 394
    .local p0, "this":Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;, "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    .line 395
    return-void
.end method
