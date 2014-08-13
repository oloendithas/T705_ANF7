.class Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;
.super Landroid/database/ContentObserver;
.source "VoWifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->access$000(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->updateRegistrationStatus()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;->access$100(Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker;)V

    .line 74
    return-void
.end method
