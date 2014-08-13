.class final Lcom/android/contacts/editor/PhotoActionPopup$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 144
    .local v0, "choice":Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    if-eqz p1, :cond_0

    .line 146
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_1
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_1

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_1

    .line 160
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_1

    .line 163
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_1

    .line 167
    :pswitch_4
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromSNote()V

    goto :goto_1

    .line 171
    :pswitch_5
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromSMemo()V

    goto :goto_1

    .line 175
    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromTaggedPicture()V

    goto :goto_1

    .line 179
    :pswitch_7
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromAvatar()V

    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
