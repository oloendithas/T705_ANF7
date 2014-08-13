.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$1;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;,
        Ljava/lang/Daemons$Daemon;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_NANOS:J = 0x2540be400L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 39
    # getter for: Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->start()V

    .line 40
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->start()V

    .line 41
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->start()V

    .line 42
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 45
    # getter for: Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->stop()V

    .line 46
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->stop()V

    .line 47
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$Daemon;->stop()V

    .line 48
    return-void
.end method
