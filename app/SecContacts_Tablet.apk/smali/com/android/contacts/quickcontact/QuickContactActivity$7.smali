.class Lcom/android/contacts/quickcontact/QuickContactActivity$7;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 639
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 640
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 642
    :cond_0
    return-void
.end method
