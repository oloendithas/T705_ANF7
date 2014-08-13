.class Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;
.super Landroid/os/CountDownTimer;
.source "WritingBuddyTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    # getter for: Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->access$000(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;->access$102(Lcom/sec/android/app/contacts/editor/WritingBuddyTutorialManager;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 132
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 137
    return-void
.end method
