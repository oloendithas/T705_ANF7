.class Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;
.super Ljava/util/TimerTask;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemindTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/Reminder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/Reminder;)V
    .locals 3

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;->this$0:Lcom/sec/android/app/contacts/eab/Reminder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 53
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rani :: I m your private owner ..send freshly added contacts..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/contacts/eab/Reminder;->milliseconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v0, p1, Lcom/sec/android/app/contacts/eab/Reminder;->milliseconds:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 61
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoFreshContacts()V

    .line 63
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/Reminder;Lcom/sec/android/app/contacts/eab/Reminder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/Reminder;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/Reminder$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;-><init>(Lcom/sec/android/app/contacts/eab/Reminder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    sget-object v1, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    const-string v2, "sending list subscribe"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "currenttime":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current date is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoContacts()V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    const-string v2, " Rani Cancelling the List-Subscribe Timer..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    goto :goto_0
.end method
