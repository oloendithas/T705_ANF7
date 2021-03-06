.class public Lcom/google/android/voiceime/ServiceHelper;
.super Landroid/app/Service;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;,
        Lcom/google/android/voiceime/ServiceHelper$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceHelper"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;-><init>(Lcom/google/android/voiceime/ServiceHelper;)V

    iput-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    .line 72
    return-void
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/ServiceHelper$Callback;->onResult(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    const-string v0, "ServiceHelper"

    const-string v1, "#onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    const-string v0, "ServiceHelper"

    const-string v1, "#onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public startRecognition(Ljava/lang/String;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 3
    .param p1, "languageLocale"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/voiceime/ServiceHelper$Callback;

    .prologue
    .line 55
    const-string v1, "ServiceHelper"

    const-string v2, "#startRecognition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
