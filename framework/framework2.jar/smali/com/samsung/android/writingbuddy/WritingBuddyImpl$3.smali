.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .registers 2

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1267
    .local v0, "action":I
    if-nez v0, :cond_35

    .line 1268
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1269
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->switchCueButton(Z)V

    .line 1271
    :cond_25
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1273
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    .line 1277
    :cond_34
    :goto_34
    return v3

    .line 1274
    :cond_35
    if-ne v0, v2, :cond_34

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I

    move-result v1

    if-ne v1, v2, :cond_34

    .line 1275
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v1, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_34
.end method