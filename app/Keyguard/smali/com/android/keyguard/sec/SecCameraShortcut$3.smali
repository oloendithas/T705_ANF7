.class Lcom/android/keyguard/sec/SecCameraShortcut$3;
.super Landroid/view/OrientationEventListener;
.source "SecCameraShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecCameraShortcut;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecCameraShortcut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecCameraShortcut;Landroid/content/Context;)V
    .registers 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 361
    const/16 v0, 0x145

    if-ge p1, v0, :cond_8

    const/16 v0, 0x23

    if-le v0, p1, :cond_f

    .line 362
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(F)V

    .line 373
    :cond_e
    :goto_e
    return-void

    .line 363
    :cond_f
    const/16 v0, 0x37

    if-lt p1, v0, :cond_27

    const/16 v0, 0x7d

    if-le v0, p1, :cond_27

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$300(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/high16 v1, 0x43870000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(F)V

    goto :goto_e

    .line 366
    :cond_27
    const/16 v0, 0x91

    if-lt p1, v0, :cond_3f

    const/16 v0, 0xd7

    if-le v0, p1, :cond_3f

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$300(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/high16 v1, 0x43340000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(F)V

    goto :goto_e

    .line 369
    :cond_3f
    const/16 v0, 0xeb

    if-lt p1, v0, :cond_e

    const/16 v0, 0x131

    if-le v0, p1, :cond_e

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$300(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(F)V

    goto :goto_e
.end method
