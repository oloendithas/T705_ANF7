.class Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;
.super Ljava/util/TimerTask;
.source "ReminderPublish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/ReminderPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemindPublishTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/ReminderPublish;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/ReminderPublish;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;->this$0:Lcom/sec/android/app/contacts/eab/ReminderPublish;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 50
    sget-object v3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->TAG:Ljava/lang/String;

    const-string v4, "remind Publish Task"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "currenttime":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currenttime while sending publish:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    :try_start_0
    sget-object v3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->mCommonIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;->publishCapabilitiesAndAvailability(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;->this$0:Lcom/sec/android/app/contacts/eab/ReminderPublish;

    iget-object v3, v3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->mContext:Landroid/content/Context;

    const-string v4, "PublishTime"

    invoke-static {v3, v4, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;->this$0:Lcom/sec/android/app/contacts/eab/ReminderPublish;

    iget-object v3, v3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 69
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
