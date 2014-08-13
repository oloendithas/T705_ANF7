.class Lcom/android/contacts/editor/TextFieldsEditorView$2;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, "mValues":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ConfigAddressField"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "fields":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 197
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    const-string v10, "data9"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "mValues6":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 199
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "?po="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    const-string v10, "data8"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "mValues5":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 205
    if-eqz v3, :cond_5

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sta="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    const-string v10, "data7"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "mValues4":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 213
    if-eqz v3, :cond_6

    .line 214
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&cty="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    const-string v10, "data4"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "mValues1":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 221
    if-eqz v3, :cond_7

    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&str="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .end local v4    # "mValues1":Ljava/lang/String;
    .end local v5    # "mValues4":Ljava/lang/String;
    .end local v6    # "mValues5":Ljava/lang/String;
    .end local v7    # "mValues6":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/contacts/editor/PostalActionPopup;->getButtonEnable()Z

    move-result v9

    if-nez v9, :cond_9

    .line 277
    :cond_4
    :goto_3
    return-void

    .line 208
    .restart local v6    # "mValues5":Ljava/lang/String;
    .restart local v7    # "mValues6":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "?sta="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 216
    .restart local v5    # "mValues4":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "?cty="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 224
    .restart local v4    # "mValues1":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "?str="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 229
    .end local v4    # "mValues1":Ljava/lang/String;
    .end local v5    # "mValues4":Ljava/lang/String;
    .end local v6    # "mValues5":Ljava/lang/String;
    .end local v7    # "mValues6":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    const-string v10, "data1"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 235
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_d

    .line 236
    :cond_a
    const/4 v8, 0x0

    .line 237
    .local v8, "message":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e001a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "add_message":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e04d5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 241
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-nez v9, :cond_c

    .line 242
    :cond_b
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;

    invoke-direct {v12, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView$2;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    # setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 253
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 256
    :cond_c
    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v9

    new-instance v10, Lcom/android/contacts/editor/TextFieldsEditorView$2$2;

    invoke-direct {v10, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView$2;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_3

    .line 271
    .end local v0    # "add_message":Ljava/lang/String;
    .end local v8    # "message":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 272
    new-instance v2, Lcom/android/contacts/editor/PostalActionPopup;

    iget-object v9, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {v2, v9, v10}, Lcom/android/contacts/editor/PostalActionPopup;-><init>(Landroid/content/Context;Lcom/android/contacts/editor/TextFieldsEditorView;)V

    .line 273
    .local v2, "mPopup":Lcom/android/contacts/editor/PostalActionPopup;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 274
    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/PostalActionPopup;->createPostalPopupMenu(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
