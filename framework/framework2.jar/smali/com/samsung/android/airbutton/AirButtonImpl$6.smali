.class Lcom/samsung/android/airbutton/AirButtonImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;->createConfigurationChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .registers 2

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$6;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfigurationChangedReceiver:onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1427
    const-string v1, "AirButtonImpl"

    const-string v2, "do nothing on com.samsung.cover.OPEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_2b
    :goto_2b
    return-void

    .line 1437
    :cond_2c
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1438
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$6;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto :goto_2b

    .line 1439
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$6;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$6;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2b

    .line 1440
    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$6;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto :goto_2b
.end method
