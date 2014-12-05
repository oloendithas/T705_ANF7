.class Lcom/android/keyguard/sec/AdaptiveEventManager$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 124
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string v2, "AdaptiveEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v2, v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v2, v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v2, v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v2, v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 134
    :cond_44
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 135
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_57

    .line 136
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Intent;)V

    .line 148
    :cond_57
    :goto_57
    return-void

    .line 139
    :cond_58
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Intent;)V

    goto :goto_57

    .line 141
    :cond_5e
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "trim":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 145
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    const-string v3, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    goto :goto_57
.end method
