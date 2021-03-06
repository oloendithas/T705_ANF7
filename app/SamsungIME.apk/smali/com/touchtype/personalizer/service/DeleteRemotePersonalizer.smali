.class public Lcom/touchtype/personalizer/service/DeleteRemotePersonalizer;
.super Lcom/touchtype/personalizer/Personalizer;
.source "DeleteRemotePersonalizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/Personalizer;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x7

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "delremote"

    return-object v0
.end method

.method public startPersonalization(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/DeleteRemotePersonalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/DeleteRemotePersonalizer;->getServiceId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 24
    return-void
.end method
