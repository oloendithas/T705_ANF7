.class Lcom/android/contacts/editor/PostalActionPopup$4;
.super Ljava/lang/Object;
.source "PostalActionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PostalActionPopup;->showPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PostalActionPopup;

.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PostalActionPopup;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    iput-object p2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$choices:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;

    .line 265
    .local v0, "choice":Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;
    if-eqz p1, :cond_1

    .line 267
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "fields":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    # getter for: Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/PostalActionPopup;->access$000(Lcom/android/contacts/editor/PostalActionPopup;)Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v4, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v5, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v6, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v2, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-virtual {v2}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    .line 286
    .end local v1    # "fields":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 273
    .restart local v1    # "fields":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    # getter for: Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/PostalActionPopup;->access$000(Lcom/android/contacts/editor/PostalActionPopup;)Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v4, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->streetnumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v5, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->city:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v6, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->state:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;

    iget-object v2, v2, Lcom/android/contacts/editor/PostalActionPopup$Posal;->postalCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v1    # "fields":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 275
    .restart local v1    # "fields":Ljava/lang/String;
    :cond_3
    const-string v2, "formatted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PostalActionPopup$ChoiceListItem;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/editor/PostalActionPopup;->access$102(Lcom/android/contacts/editor/PostalActionPopup;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    iget-object v3, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    # getter for: Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/editor/PostalActionPopup;->access$100(Lcom/android/contacts/editor/PostalActionPopup;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/editor/PostalActionPopup;->access$102(Lcom/android/contacts/editor/PostalActionPopup;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    # getter for: Lcom/android/contacts/editor/PostalActionPopup;->mView:Lcom/android/contacts/editor/TextFieldsEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/PostalActionPopup;->access$000(Lcom/android/contacts/editor/PostalActionPopup;)Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/PostalActionPopup$4;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    # getter for: Lcom/android/contacts/editor/PostalActionPopup;->retPostalStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/editor/PostalActionPopup;->access$100(Lcom/android/contacts/editor/PostalActionPopup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->setTextPostalAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
