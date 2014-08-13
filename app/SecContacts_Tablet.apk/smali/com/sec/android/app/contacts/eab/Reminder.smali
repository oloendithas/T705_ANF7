.class public Lcom/sec/android/app/contacts/eab/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/Reminder$1;,
        Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field static timer:Ljava/util/Timer;


# instance fields
.field milliseconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    .line 24
    const-string v0, "EAB-Reminder"

    sput-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "seconds"    # I
    .param p2, "repeatinterval"    # I

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/eab/Reminder;->milliseconds:I

    .line 28
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling a new remind seconds - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " repeatInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    const-string v1, "Timer is called again when still it is not cancelled...Rani "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 34
    sput-object v3, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    .line 37
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    .line 38
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/sec/android/app/contacts/eab/Reminder;->milliseconds:I

    .line 40
    if-nez p2, :cond_1

    .line 41
    add-int/lit8 p2, p2, 0xa

    .line 42
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeatinterval is zero hence adding 10:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/eab/Reminder;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/contacts/eab/Reminder$RemindTask;-><init>(Lcom/sec/android/app/contacts/eab/Reminder;Lcom/sec/android/app/contacts/eab/Reminder$1;)V

    iget v2, p0, Lcom/sec/android/app/contacts/eab/Reminder;->milliseconds:I

    int-to-long v2, v2

    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 48
    return-void
.end method
