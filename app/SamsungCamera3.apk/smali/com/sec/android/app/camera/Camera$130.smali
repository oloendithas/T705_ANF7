.class Lcom/sec/android/app/camera/Camera$130;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showEULADialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 15326
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$130;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 15328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$130;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mEULAPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$130;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15329
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$130;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 15330
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$130;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mEULAPopup:Landroid/app/AlertDialog;

    .line 15332
    :cond_0
    return-void
.end method
