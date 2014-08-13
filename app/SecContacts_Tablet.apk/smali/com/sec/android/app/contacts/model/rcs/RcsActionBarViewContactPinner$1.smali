.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->buildDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

.field final synthetic val$actions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iput-object p2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->val$actions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    iget-object v1, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mIntent:Landroid/content/Intent;

    .line 242
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 253
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    const v3, 0x7f0e03d7

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 246
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    # getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    goto :goto_0
.end method
