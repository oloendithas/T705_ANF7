.class Lcom/android/systemui/power/PowerUI$5;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showChargingInterruptionWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    .line 1179
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v1, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1182
    :cond_0
    return-void
.end method
