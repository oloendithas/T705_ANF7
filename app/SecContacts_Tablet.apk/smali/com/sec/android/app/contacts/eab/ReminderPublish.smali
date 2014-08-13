.class public Lcom/sec/android/app/contacts/eab/ReminderPublish;
.super Ljava/lang/Object;
.source "ReminderPublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field public static count:I

.field public static mCommonIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;


# instance fields
.field mContext:Landroid/content/Context;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->count:I

    .line 37
    const-string v0, "EAB-ReminderPublish"

    sput-object v0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->mCommonIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seconds"    # I
    .param p3, "commonIf"    # Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->timer:Ljava/util/Timer;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ReminderPublish;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/eab/ReminderPublish$RemindPublishTask;-><init>(Lcom/sec/android/app/contacts/eab/ReminderPublish;)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 44
    sput-object p3, Lcom/sec/android/app/contacts/eab/ReminderPublish;->mCommonIMSInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 46
    return-void
.end method
