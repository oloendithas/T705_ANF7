.class Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;
.super Ljava/lang/Object;
.source "CallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
