.class Lcom/sec/android/app/camera/Camera$71;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 7698
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$71;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 7702
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$71;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 7703
    return-void
.end method
