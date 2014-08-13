.class public Lcom/nuance/connect/util/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/Alarm$1;,
        Lcom/nuance/connect/util/Alarm$Builder;
    }
.end annotation


# instance fields
.field private final alarmId:I

.field private final alarmType:Ljava/lang/String;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private final extras:Landroid/os/Bundle;

.field private final flags:I

.field private final repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private track:Z

.field private final triggerTime:J

.field private final wakeType:I


# direct methods
.method private constructor <init>(Lcom/nuance/connect/util/Alarm$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    const/4 v4, 0x1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    .line 45
    iput-boolean v4, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    .line 265
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$100(Lcom/nuance/connect/util/Alarm$Builder;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 266
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$200(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    .line 267
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$300(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/Alarm;->generateAlarmId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    .line 270
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$400(Lcom/nuance/connect/util/Alarm$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 271
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$500(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$600(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$700(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$800(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$900(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    # setter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->access$402(Lcom/nuance/connect/util/Alarm$Builder;J)J

    .line 277
    :cond_0
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$400(Lcom/nuance/connect/util/Alarm$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    .line 278
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1000(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1000(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 281
    :cond_1
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1100(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    .line 286
    :goto_0
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->flags:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1200(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->flags:I

    .line 287
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1300(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm;->repeating:Z

    .line 288
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->track:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1400(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    .line 289
    return-void

    .line 284
    :cond_2
    iput v4, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/util/Alarm$Builder;Lcom/nuance/connect/util/Alarm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;
    .param p2, "x1"    # Lcom/nuance/connect/util/Alarm$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nuance/connect/util/Alarm;-><init>(Lcom/nuance/connect/util/Alarm$Builder;)V

    return-void
.end method

.method private generateAlarmId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "requestingClassName"    # Ljava/lang/String;
    .param p2, "alarmType"    # Ljava/lang/String;

    .prologue
    .line 350
    const/16 v4, 0x17

    .line 351
    .local v4, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "s":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 353
    .local v1, "b":B
    mul-int/lit8 v6, v4, 0x1f

    add-int v4, v6, v1

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "b":B
    :cond_0
    return v4
.end method

.method private generateIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v3, Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 336
    const-string v2, "ALARM_CLASS"

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "ALARM_TYPE"

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    iget v3, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    iget v4, p0, Lcom/nuance/connect/util/Alarm;->flags:I

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 340
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/nuance/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 308
    .local v1, "operation":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 309
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 310
    return-void
.end method

.method public set()V
    .locals 5

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/nuance/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 296
    .local v1, "operation":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 297
    .local v0, "alarm":Landroid/app/AlarmManager;
    iget v2, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    iget-wide v3, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 298
    iget-boolean v2, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-wide v3, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->addAlarm(J)V

    .line 301
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 323
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy hh:mm:ss:SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 324
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alarm ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "desc":Ljava/lang/StringBuilder;
    const-string v2, "alarmId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "launcher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, "alarm type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, "executes at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
