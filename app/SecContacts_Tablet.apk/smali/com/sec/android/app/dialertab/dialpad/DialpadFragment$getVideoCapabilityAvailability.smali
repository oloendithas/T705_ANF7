.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getVideoCapabilityAvailability"
.end annotation


# instance fields
.field public availability:Z

.field public mQueryNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "queryNumber"    # Ljava/lang/String;

    .prologue
    .line 13303
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->mQueryNumber:Ljava/lang/String;

    .line 13304
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->mQueryNumber:Ljava/lang/String;

    .line 13305
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13309
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fetchdatabase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->availability:Z

    .line 13310
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->availability:Z

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->vt_call_btn_enabled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 13312
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->availability:Z

    if-eqz v0, :cond_0

    .line 13313
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$getVideoCapabilityAvailability;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->Update_Video_Button(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 13314
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabling the Video Call Button "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 13316
    :cond_0
    return-void
.end method
