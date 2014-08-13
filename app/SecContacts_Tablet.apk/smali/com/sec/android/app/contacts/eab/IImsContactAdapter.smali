.class public interface abstract Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
.super Ljava/lang/Object;
.source "IImsContactAdapter.java"


# virtual methods
.method public abstract InitiateBootupPublishSubscribe()V
.end method

.method public abstract RegisterApp()I
.end method

.method public abstract SendSubscribeForContact(Ljava/lang/String;I)I
.end method

.method public abstract SendSubscribeForContactsList(Ljava/util/ArrayList;Ljava/lang/String;)I
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
.end method

.method public abstract ValidateIMSRegistration()Z
.end method

.method public abstract getContactListNames()I
.end method

.method public abstract getNotifyInfoForContact(Ljava/lang/String;)I
.end method

.method public abstract getTokenRequestType(Ljava/lang/String;)Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
.end method

.method public abstract isLTEVideoCallEnabled()Z
.end method

.method public abstract isVoLTEFeatureEnabled()Z
.end method

.method public abstract publishPresence()I
.end method

.method public abstract registerEventCallback(Landroid/os/Handler;)V
.end method

.method public abstract resetAlarmForPublish()V
.end method

.method public abstract resetAlarmForSubscribe()V
.end method

.method public abstract setLTEVideoCall(Z)V
.end method

.method public abstract setVoLTEFeatureEnable(Z)V
.end method

.method public abstract unRegisterEventCallback()V
.end method

.method public abstract unpublishCapabilitiesAndAvailability()I
.end method
