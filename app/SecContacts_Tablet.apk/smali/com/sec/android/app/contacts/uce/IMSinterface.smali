.class public Lcom/sec/android/app/contacts/uce/IMSinterface;
.super Ljava/lang/Object;
.source "IMSinterface.java"


# static fields
.field private static final CONTACT_AVAILABILITY_OFF:I = 0x1

.field private static final CONTACT_AVAILABILITY_ON:I = 0x0

.field private static final CONTACT_AVAILABILITY_UNKNOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IMSinterface"


# instance fields
.field private mClientHandler:Landroid/os/Handler;

.field private mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 53
    const-string v0, "IMSinterface"

    const-string v1, "mjs Volte IMSinterface Create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/uce/IMSinterface;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/IMSinterface;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public ValidateIMSRegistration()Z
    .locals 4

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mImsInterfaceGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v0

    .line 210
    :goto_0
    const-string v1, "IMSinterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mjs ValidateIMSRegistration retVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v0

    .line 208
    :cond_0
    const-string v1, "IMSinterface"

    const-string v2, " mjs ValidateIMSRegistration mImsInterfaceGeneral is Null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addListener(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)I
    .locals 4
    .param p1, "mImsInterface"    # Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;
    .param p2, "mPresenceListener"    # Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .prologue
    .line 59
    const-string v1, "IMSinterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mjs Volte mImsInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/uce/IMSinterface;->ValidateIMSRegistration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    invoke-interface {p1, p2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->registerForPresenceNotifyUpdates(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 64
    const-string v1, "IMSinterface"

    const-string v2, "mjs registerForPresenceNotifyUpdates registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    const-string v1, "IMSinterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mjs registerForPresenceNotifyUpdates error= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callRemoteCapabilitiesAndAvailability(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;Ljava/lang/String;)V
    .locals 6
    .param p1, "mImsInterface"    # Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v2, "IMSinterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mjs callRemoteCapabilitiesAndAvailability mImsInterface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 79
    .local v1, "remoteUri":[Ljava/lang/String;
    aput-object p2, v1, v5

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/uce/IMSinterface;->ValidateIMSRegistration()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :try_start_0
    const-string v2, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    invoke-interface {p1, v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->getRemoteCapabilitiesAndAvailability([Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    const-string v2, "IMSinterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mjs getRemoteCapabilitiesAndAvailability remoteUri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    const-string v2, "IMSinterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mjs getRemoteCapabilitiesAndAvailability error= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IMSinterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mjs getRemoteCapabilitiesAndAvailability other error= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createSipPresenceListener()Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
    .locals 3

    .prologue
    .line 97
    const-string v1, "IMSinterface"

    const-string v2, "mjs createSipPresenceListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/sec/android/app/contacts/uce/IMSinterface$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/uce/IMSinterface$1;-><init>(Lcom/sec/android/app/contacts/uce/IMSinterface;)V

    .line 191
    .local v0, "listener":Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
    return-object v0
.end method

.method public registerEventCallback(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method public unRegisterEventCallback()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/uce/IMSinterface;->mClientHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method
