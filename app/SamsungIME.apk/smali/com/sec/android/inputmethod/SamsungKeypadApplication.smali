.class public Lcom/sec/android/inputmethod/SamsungKeypadApplication;
.super Landroid/app/Application;
.source "SamsungKeypadApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"


# instance fields
.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getACSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SAMSUNG"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 18
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 20
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadApplication;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    return-void
.end method
