.class Lcom/android/systemui/statusbar/policy/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$1;->this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$1;->this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;

    # getter for: Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->access$000(Lcom/android/systemui/statusbar/policy/VolumePanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$1;->this$0:Lcom/android/systemui/statusbar/policy/VolumePanel;

    # invokes: Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->access$100(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    .line 84
    :cond_0
    return-void
.end method
