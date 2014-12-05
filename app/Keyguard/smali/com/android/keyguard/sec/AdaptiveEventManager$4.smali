.class Lcom/android/keyguard/sec/AdaptiveEventManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 210
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_weather"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_16

    move v0, v2

    .line 211
    .local v0, "isWeatherEnabled":Z
    :cond_16
    if-eqz v0, :cond_41

    .line 212
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v3, v3, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "weatherTrigger":Landroid/content/Intent;
    const-string v3, "START"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v2, "PACKAGE"

    const-string v3, "com.android.keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "CP"

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    .end local v1    # "weatherTrigger":Landroid/content/Intent;
    :cond_41
    return-void
.end method
