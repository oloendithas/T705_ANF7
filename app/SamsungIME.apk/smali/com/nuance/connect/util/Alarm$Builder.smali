.class public Lcom/nuance/connect/util/Alarm$Builder;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actualTriggerTime:J

.field private final alarmType:Ljava/lang/String;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private extras:Landroid/os/Bundle;

.field private flags:I

.field private relativeTriggerDays:I

.field private relativeTriggerHours:I

.field private relativeTriggerMillis:I

.field private relativeTriggerMinutes:I

.field private relativeTriggerSeconds:I

.field private repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private track:Z

.field private wakeDevice:Z


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lcom/nuance/connect/service/ConnectClient;
    .param p3, "alarmType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/service/ConnectClient;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "requestingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    .line 60
    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    .line 61
    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    .line 62
    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    .line 63
    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    .line 64
    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    .line 67
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    .line 68
    iput-boolean v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    .line 85
    iput-object p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/util/Alarm$Builder;)Lcom/nuance/connect/service/ConnectClient;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/util/Alarm$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/util/Alarm$Builder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/Alarm$Builder;

    .prologue
    .line 54
    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    return v0
.end method


# virtual methods
.method public build()Lcom/nuance/connect/util/Alarm;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/nuance/connect/util/Alarm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/util/Alarm;-><init>(Lcom/nuance/connect/util/Alarm$Builder;Lcom/nuance/connect/util/Alarm$1;)V

    return-object v0
.end method

.method public days(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "futureDays"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    .line 102
    return-object p0
.end method

.method public extras(Landroid/os/Bundle;)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    .line 205
    return-object p0
.end method

.method public extras(Ljava/util/Map;)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/connect/util/Alarm$Builder;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public flags(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    .line 234
    return-object p0
.end method

.method public hours(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "futureHours"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    .line 117
    return-object p0
.end method

.method public millis(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "futureMillis"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    .line 162
    return-object p0
.end method

.method public minutes(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "futureMinutes"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    .line 132
    return-object p0
.end method

.method public repeating(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "repeating"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    .line 246
    return-object p0
.end method

.method public seconds(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "futureSeconds"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    .line 147
    return-object p0
.end method

.method public track(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "track"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    .line 251
    return-object p0
.end method

.method public triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "millisSinceEpoch"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    .line 176
    return-object p0
.end method

.method public wakeDevice(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0
    .param p1, "wakeDevice"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z

    .line 220
    return-object p0
.end method
