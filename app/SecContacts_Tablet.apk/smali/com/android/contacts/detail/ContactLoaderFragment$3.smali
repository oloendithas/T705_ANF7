.class Lcom/android/contacts/detail/ContactLoaderFragment$3;
.super Landroid/os/Handler;
.source "ContactLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1206
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$700(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$700(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$700(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1212
    :cond_0
    return-void
.end method
