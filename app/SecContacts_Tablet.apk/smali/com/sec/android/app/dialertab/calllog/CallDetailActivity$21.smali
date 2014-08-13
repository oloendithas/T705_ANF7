.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$21;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->motionDialogInitialOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 4486
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$21;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$21;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 4489
    return-void
.end method
