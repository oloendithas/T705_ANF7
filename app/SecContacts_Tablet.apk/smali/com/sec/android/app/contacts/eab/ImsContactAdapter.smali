.class public Lcom/sec/android/app/contacts/eab/ImsContactAdapter;
.super Ljava/lang/Object;
.source "ImsContactAdapter.java"

# interfaces
.implements Lcom/sec/android/app/contacts/eab/IImsContactAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    }
.end annotation


# static fields
.field public static final EAB_CONTACTS_SERVICE_AUDIO_OFF_VIDEO_ON:I = 0x2

.field public static final EAB_CONTACTS_SERVICE_AUDIO_ON_VIDEO_OFF:I = 0x1

.field public static final EAB_CONTACTS_SERVICE_AUDIO_ON_VIDEO_ON:I = 0x3

.field public static final EAB_CONTACT_SERVICE_AUDIO_OFF_VIDEO_OFF:I = 0x0

.field private static IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:I = 0x0

.field public static final NOTIFY_CONTACTCARD_FOR_UPDATE:I = 0xb

.field public static final NOTIFY_CONTACTLIST_FOR_UPDATE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "EAB-ImsContactAdapter"


# instance fields
.field private final CALL_REG_APP:I

.field private DBG:Z

.field private appHdl:I

.field private isAppRegistered:Z

.field private mClientHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field private mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

.field private mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRegListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mTokenMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;",
            ">;"
        }
    .end annotation
.end field

.field private msgSvcHdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->DBG:Z

    .line 68
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 69
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 73
    iput v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    .line 74
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->isAppRegistered:Z

    .line 75
    iput v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    .line 77
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 78
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mRegListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 79
    const/16 v2, 0x12e

    iput v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->CALL_REG_APP:I

    .line 81
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    .line 85
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->DBG:Z

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "ImsContactAdapter - constructor"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    .line 89
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    .line 94
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "csc":Ljava/lang/String;
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    iput-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 104
    :goto_0
    const/4 v2, 0x7

    invoke-static {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->createSipPresenceListener()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->createSipRegListener()V

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->registerForPresenceNotifyUpdates(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mRegListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    return-void

    .line 98
    :cond_1
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    iput-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    goto :goto_0

    .line 100
    :cond_2
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-static {v4, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    iput-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    goto :goto_0

    .line 103
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetRetryAlarm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Lcom/sec/android/app/contacts/eab/ImsParams;Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/eab/ImsParams;
    .param p2, "x2"    # Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->setParamsForAProfile(Lcom/sec/android/app/contacts/eab/ImsParams;Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;I)V

    return-void
.end method

.method private resetRetryAlarm(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    .line 1060
    .local v0, "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRetryAlarm with token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    const-string v1, "Reset Schedule Capability poll retry"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForSubscribe()V

    goto :goto_0

    .line 1065
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_SINGLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1066
    const-string v1, "Reset Capability poll retry"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForSingleSubscribe()V

    goto :goto_0

    .line 1069
    :cond_3
    const-string v1, "No need to reset anything."

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setParamsForAProfile(Lcom/sec/android/app/contacts/eab/ImsParams;Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;I)V
    .locals 12
    .param p1, "params"    # Lcom/sec/android/app/contacts/eab/ImsParams;
    .param p2, "remoteProfile"    # Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x1

    .line 522
    if-nez p2, :cond_0

    .line 523
    const-string v10, "setParamsForAProfile - invalid param Info"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 574
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getAvailability()I

    move-result v2

    .line 533
    .local v2, "avail_status":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v3, "capabilities":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/samsung/commonimsinterface/imscommon/IMSProfileParams;->getCapabilities()Landroid/os/Bundle;

    move-result-object v3

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "avail_HDAudio":I
    const/4 v1, 0x0

    .line 537
    .local v1, "avail_HDVideo":I
    const-string v10, "hdaudio"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, "savail_HDAudio":Ljava/lang/String;
    const-string v10, "videocall"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 539
    .local v7, "savail_HDVideo":Ljava/lang/String;
    const-string v10, "hdcontacturi"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 540
    .local v9, "teluri":Ljava/lang/String;
    const-string v10, "no"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 541
    const/4 v0, 0x0

    .line 544
    :cond_1
    :goto_1
    const-string v10, "no"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 545
    const/4 v1, 0x0

    .line 546
    :cond_2
    const-string v10, "full"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 547
    const/4 v1, 0x1

    .line 556
    :cond_3
    if-nez v0, :cond_9

    if-nez v1, :cond_8

    const/4 v8, 0x0

    .line 561
    .local v8, "serv_status":I
    :cond_4
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile avail_HDAudio"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile avail_HDVideo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 563
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile serv_status"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 564
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile avail_status"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 565
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile number"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 566
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setParamsForAProfile uritype"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 568
    if-eqz v9, :cond_5

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v9, 0x0

    .line 570
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "info":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v4}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v10, "setParamsForAProfile - Exiting"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    .end local v4    # "info":Ljava/lang/String;
    .end local v8    # "serv_status":I
    :cond_7
    const-string v10, "full"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 543
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 556
    :cond_8
    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_9
    if-ne v1, v8, :cond_4

    const/4 v8, 0x3

    goto/16 :goto_2
.end method


# virtual methods
.method public InitiateBootupPublishSubscribe()V
    .locals 4

    .prologue
    .line 506
    const-string v0, "EAB-ImsContactAdapter"

    const-string v1, "InitiateBootupPublishSubscribe"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const-string v0, "EAB-ImsContactAdapter"

    const-string v1, "mSipManager.isRegistered is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;

    const/16 v1, 0x3e4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v0, "EAB-ImsContactAdapter"

    const-string v1, "mSipManager.isRegistered is false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RegisterApp()I
    .locals 3

    .prologue
    .line 599
    const-string v0, "RegisterApp : "

    .line 600
    .local v0, "FN_TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->DBG:Z

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_1

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mImsInterfaceGeneral is Null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 607
    const/4 v1, -0x1

    .line 632
    :goto_0
    return v1

    .line 631
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 632
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SendSubscribeForContact(Ljava/lang/String;I)I
    .locals 10
    .param p1, "sip_uri"    # Ljava/lang/String;
    .param p2, "listSubStatus"    # I

    .prologue
    const/4 v9, 0x0

    .line 830
    const-string v0, "SendSubscribeForContact "

    .line 831
    .local v0, "FN_TAG":Ljava/lang/String;
    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EAB-ImsContactAdapter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Enter sip_uri - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 834
    sput v9, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    .line 836
    :cond_0
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 837
    .local v3, "remoteUri":[Ljava/lang/String;
    aput-object p1, v3, v9

    .line 838
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updatetime(Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 842
    :try_start_0
    sget v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    .line 843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v4, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    sget-object v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN_FOR_VIEW:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 846
    .local v4, "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    iget-object v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendSubscribeForContact type is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN_FOR_VIEW:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and token is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Urinumber sending finally is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    const-string v6, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v3, v6, v7, v8}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->getRemoteCapabilitiesAndAvailabilityPoll([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    :cond_1
    :goto_0
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return v9

    .line 852
    :catch_0
    move-exception v2

    .line 853
    .local v2, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public SendSubscribeForContactsList(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 11
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "cnt_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 794
    const-string v0, "SendSubscribeForContactsList enter"

    .line 795
    .local v0, "FN_TAG":Ljava/lang/String;
    const-string v5, "DEBUG"

    const-string v6, "EAB-ImsContactAdapter SendSubscribeForContactsList"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Enter  size - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 799
    sput v10, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    .line 802
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 804
    .local v3, "remoteUri":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    :try_start_0
    sget v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    .line 807
    new-instance v4, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    invoke-direct {v4, p0, p2, p1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 808
    .local v4, "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    iget-object v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendSubscribeForContactList RequetType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with token value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v6, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const-string v7, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v6, v5, v7, v8, v9}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->getRemoteCapabilitiesAndAvailabilityPoll([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v4    # "requestType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->printNumbers(Ljava/util/ArrayList;)V

    .line 819
    const-string v5, "EAB-ImsContactAdapter"

    const-string v6, "SendSubscribeForContactsList exit"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "currenttime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "final subscribe time and updated current date is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 823
    iget-object v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v6, "LstSubscribeTime"

    invoke-static {v5, v6, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v5, "EAB-ImsContactAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return v10

    .line 814
    .end local v1    # "currenttime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 815
    .local v2, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public ValidateIMSRegistration()Z
    .locals 5

    .prologue
    .line 577
    const/4 v1, 0x0

    .line 579
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLimitedMode(I)Z

    move-result v0

    .line 582
    .local v0, "isLimitedMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValidateIMSRegistration limited mode TYPE_MOBILE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValidateIMSRegistration limited mode TYPE_WIFI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLimitedMode(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v1

    .line 587
    if-eqz v0, :cond_0

    .line 588
    const/4 v1, 0x0

    .line 594
    .end local v0    # "isLimitedMode":Z
    :cond_0
    :goto_0
    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EAB-ImsContactAdapter ValidateIMSRegistration retVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v1

    .line 591
    :cond_1
    const-string v2, " ValidateIMSRegistration mImsInterfaceGeneral is Null"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method createSipPresenceListener()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$2;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)V

    .line 479
    .local v0, "listener":Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 481
    return-void
.end method

.method createSipRegListener()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mRegListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 182
    return-void
.end method

.method public getContactListNames()I
    .locals 8

    .prologue
    .line 638
    const-string v3, "DEBUG"

    const-string v4, "EAB-ImsContactAdapter getContactListNames"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v0, "getContactListNames:"

    .line 640
    .local v0, "FN_TAG":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->DBG:Z

    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 643
    :cond_0
    const-string v3, "ImsContactAdapter:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    sget v3, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 647
    new-instance v2, Lcom/sec/android/app/contacts/eab/ImsParams;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/eab/ImsParams;-><init>()V

    .line 648
    .local v2, "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    const-string v3, "ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgSvcHdl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appHdl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "hAppHndl"

    iget v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;I)V

    .line 651
    const-string v3, "hEabSvcHndl"

    iget v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;I)V

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    const/16 v4, 0x2e

    iget v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    iget v6, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/eab/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->contactSvcCallFunction(IIILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v2    # "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 658
    .restart local v2    # "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNotifyInfoForContact(Ljava/lang/String;)I
    .locals 8
    .param p1, "sip_uri"    # Ljava/lang/String;

    .prologue
    .line 862
    const-string v0, "getNotifyInfoForContact"

    .line 863
    .local v0, "FN_TAG":Ljava/lang/String;
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EAB-ImsContactAdapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-nez p1, :cond_0

    .line 866
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "invalid URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v3, -0x1

    .line 890
    :goto_0
    return v3

    .line 870
    :cond_0
    new-instance v2, Lcom/sec/android/app/contacts/eab/ImsParams;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/eab/ImsParams;-><init>()V

    .line 872
    .local v2, "params":Lcom/sec/android/app/contacts/eab/ImsParams;
    const-string v3, "hAppHndl"

    iget v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;I)V

    .line 873
    const-string v3, "hEabSvcHndl"

    iget v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;I)V

    .line 874
    const-string v3, "CNT_URI"

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/contacts/eab/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    const/16 v4, 0x48

    iget v5, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->appHdl:I

    iget v6, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->msgSvcHdl:I

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/eab/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->contactSvcCallFunction(IIILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :cond_1
    :goto_1
    const-string v3, "EAB-ImsContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v3, 0x0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getTelNumberFromUriForError(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 484
    const-string v3, " getTelNumberFromUriForError  - Enter"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 485
    move-object v1, p1

    .line 487
    .local v1, "tel_num":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTelNumberFromUriForError -------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 503
    :goto_0
    return-object v2

    .line 490
    :cond_0
    if-eqz p1, :cond_1

    sget-object v3, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTelNumberFromUriForError uri is ALL -------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_1
    const-string v2, "sip:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 497
    .local v0, "endIndex":I
    const-string v2, "sip:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 502
    .end local v0    # "endIndex":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTelNumberFromUriForError - Exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 503
    goto :goto_0

    .line 498
    :cond_3
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    const-string v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getTokenRequestType(Ljava/lang/String;)Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    .locals 2
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTokenRequestType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mTokenMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    goto :goto_0
.end method

.method public isLTEVideoCallEnabled()Z
    .locals 2

    .prologue
    .line 938
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter isLTEVideoCallEnabled Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotNullorEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 911
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const/4 v0, 0x1

    .line 914
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoLTEFeatureEnabled()Z
    .locals 2

    .prologue
    .line 967
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter isVoLTEFeatureEnabled Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 907
    const-string v0, "EAB-ImsContactAdapter"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    return-void
.end method

.method public printNumbers(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .local v1, "number":Ljava/lang/String;
    const-string v2, "EAB-ImsContactAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " number - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public publishPresence()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 667
    const-string v1, "publishPresence()"

    .line 668
    .local v1, "FN_TAG":Ljava/lang/String;
    const-string v11, "DEBUG"

    const-string v12, "EAB-ImsContactAdapter publishPresence1"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v9, 0x0

    .line 670
    .local v9, "result":Z
    const/4 v3, 0x1

    .local v3, "HDVoiceSel":Z
    const/4 v2, 0x1

    .line 671
    .local v2, "HDVTSel":Z
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 672
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 674
    .local v0, "Availbility":I
    const/4 v4, 0x1

    .line 675
    .local v4, "VoLTEBetaEnabled":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v9

    .line 677
    if-nez v9, :cond_1

    .line 678
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " result value =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " returning"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return v14

    .line 682
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v12, "VoLTEBetaEnabled"

    const-string v13, "VoLTEBetaEnabled"

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 684
    .local v10, "str_temp":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "publishPresence VoLTE_BETA_ENABLED is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->isLTEVideoCallEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 687
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v12, "LVCBetaEnabled"

    const-string v13, "LVCBetaEnabled"

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :goto_1
    if-eqz v10, :cond_2

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 694
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 697
    :cond_2
    const-string v11, "EAB-ImsContactAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VoLTEBetaEnabled is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-nez v4, :cond_6

    .line 699
    const-string v11, "EAB-ImsContactAdapter"

    const-string v12, "VoLTEBetaEnabled is Equal to  0"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v3, 0x1

    .line 701
    const/4 v2, 0x1

    .line 702
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 703
    const-string v11, "1"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 720
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 721
    .local v8, "keyValuePairs":Ljava/util/Hashtable;
    const-string v11, "%audio_supported%"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v11, "%video_supported%"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v11, "%support_level%"

    const-string v12, "full"

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 725
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v0, v11, :cond_8

    .line 727
    const-string v11, "%status%"

    const-string v12, "open"

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_4
    :goto_3
    const-string v11, "EAB-ImsContactAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "keyvaluepair size is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v11, "EAB-ImsContactAdapter"

    const-string v12, "publishCapabilitiesAndAvailability called"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 739
    :try_start_0
    const-string v11, "EAB-ImsContactAdapter"

    const-string v12, "Calling CII method for initiating publish "

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    new-instance v12, Ljava/lang/String;

    const-string v13, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12, v8}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->publishCapabilitiesAndAvailability(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 743
    :catch_0
    move-exception v7

    .line 744
    .local v7, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 689
    .end local v7    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    .end local v8    # "keyValuePairs":Ljava/util/Hashtable;
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v12, "LVCBetaEnabled"

    const-string v13, "0"

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 705
    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v12, "LVCBetaEnabled"

    const-string v13, "LVCBetaEnabled"

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, "currentLVCSetting":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentLVCSetting is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 707
    const-string v11, "0"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 708
    const/4 v2, 0x0

    .line 712
    :goto_4
    iget-object v11, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v12, "mobile_data"

    const-string v13, "mobile_data"

    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, "currentMobileDataSetting":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentMobileDataSetting is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 714
    const-string v11, "0"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 716
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 710
    .end local v6    # "currentMobileDataSetting":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    goto :goto_4

    .line 729
    .end local v5    # "currentLVCSetting":Ljava/lang/String;
    .restart local v8    # "keyValuePairs":Ljava/util/Hashtable;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 731
    const-string v11, "1"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v0, v11, :cond_4

    .line 732
    const-string v11, "%status%"

    const-string v12, "closed"

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public registerEventCallback(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;

    .line 897
    return-void
.end method

.method public resetAlarmForCapabilityPollInterval()V
    .locals 7

    .prologue
    .line 1024
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .local v1, "msgIntent":Landroid/content/Intent;
    const-string v3, "sendSubscribetoContacts"

    .line 1026
    .local v3, "strInputMsg":Ljava/lang/String;
    const-string v4, "imsg"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1030
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const v5, 0xbde31

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1033
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v4, "Resetting subscribe Retry Alarm Interval for Capability poll"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1035
    return-void
.end method

.method public resetAlarmForPublish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 994
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    .local v1, "msgIntent":Landroid/content/Intent;
    const-string v3, "sendRetryFullPublish"

    .line 996
    .local v3, "strInputMsg":Ljava/lang/String;
    const-string v4, "imsg"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1000
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const v5, 0xd9038

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1003
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v4, "Resetting publish Retry Alarm Interval"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1005
    sput v6, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    .line 1006
    return-void
.end method

.method public resetAlarmForSingleSubscribe()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1009
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1010
    .local v1, "msgIntent":Landroid/content/Intent;
    const-string v3, "sendSubscribeForSingleContact"

    .line 1011
    .local v3, "strInputMsg":Ljava/lang/String;
    const-string v4, "imsg"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1015
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const v5, 0xd74da

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1018
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v4, "Resetting subscribe Retry Alarm Interval Single subscribe"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1020
    sput v6, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    .line 1022
    return-void
.end method

.method public resetAlarmForSubscribe()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 978
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    .local v1, "msgIntent":Landroid/content/Intent;
    const-string v3, "sendSubscribetoContacts"

    .line 980
    .local v3, "strInputMsg":Ljava/lang/String;
    const-string v4, "imsg"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 984
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mContext:Landroid/content/Context;

    const v5, 0xd74d9

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 987
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v4, "Resetting subscribe Retry Alarm Interval list subscribe"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->log(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 989
    sput v6, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    .line 991
    return-void
.end method

.method public setLTEVideoCall(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 921
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setLTEVideoCall Enter"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    .line 924
    if-eqz p1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    .line 932
    :goto_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setLTEVideoCall Exit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_0

    .line 929
    :cond_1
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setLTEVideoCall mImsInterfaceGeneral is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVoLTEFeatureEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 950
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setVoLTEFeatureEnable Enter"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    .line 953
    if-eqz p1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 961
    :goto_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setVoLTEFeatureEnable Exit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    goto :goto_0

    .line 958
    :cond_1
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter setVoLTEFeatureEnable mImsInterfaceGeneral is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterEventCallback()V
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;

    .line 903
    return-void
.end method

.method public unpublishCapabilitiesAndAvailability()I
    .locals 2

    .prologue
    .line 753
    const-string v0, "EAB-ImsContactAdapter"

    const-string v1, "unpublishCapabilitiesAndAvailability "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->unpublishCapabilitiesAndAvailability()Z

    .line 755
    const/4 v0, 0x0

    return v0
.end method
