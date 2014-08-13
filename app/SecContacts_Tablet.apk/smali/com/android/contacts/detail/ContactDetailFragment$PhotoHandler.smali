.class final Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;
    }
.end annotation


# instance fields
.field private final mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;IZLcom/android/contacts/model/EntityDeltaList;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "photoMode"    # I
    .param p4, "isDirectoryContact"    # Z
    .param p5, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    const/4 v2, 0x0

    .line 6783
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6784
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V

    .line 6785
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    .line 6786
    return-void
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 6790
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method protected startAvatarActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 6818
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 6819
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6824
    :cond_0
    :goto_0
    return-void

    .line 6822
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5702(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6823
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 6795
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 6796
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6801
    :cond_0
    :goto_0
    return-void

    .line 6799
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5702(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6800
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startSMemoActivity(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 6812
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6813
    return-void
.end method

.method protected startSNoteActivity(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 6806
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6807
    return-void
.end method
