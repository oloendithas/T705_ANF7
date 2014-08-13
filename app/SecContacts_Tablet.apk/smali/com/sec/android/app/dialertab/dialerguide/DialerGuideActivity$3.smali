.class Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;
.super Ljava/lang/Object;
.source "DialerGuideActivity.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEditTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    const-string v2, ""

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWbReceivedText:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$802(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "temp":Ljava/lang/String;
    const-string v1, "DialerGuideActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEditTextView temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "//recogDone//"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HOVER_CANCELED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HOVERED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPENED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLOSED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDigitsText(Ljava/lang/String;)V

    .line 405
    :cond_0
    const-string v1, "HOVERED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 431
    :cond_1
    :goto_0
    const-string v1, "//recogDone//"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HOVER_CANCELED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HOVERED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OPENED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CLOSED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setDialNumberForWritingBuddy(Ljava/lang/String;)V

    .line 434
    :cond_2
    return-void

    .line 410
    :cond_3
    const-string v1, "OPENED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    goto :goto_0

    .line 415
    :cond_4
    const-string v1, "CLOSED"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getDigitsText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->tempNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    goto/16 :goto_0

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getStep()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    goto/16 :goto_0
.end method
