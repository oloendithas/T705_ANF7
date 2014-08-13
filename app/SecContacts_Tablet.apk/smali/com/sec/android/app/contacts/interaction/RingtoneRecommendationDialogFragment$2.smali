.class Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Landroid/widget/BaseAdapter;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$002(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;I)I

    .line 205
    if-eq p2, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 210
    packed-switch p2, :pswitch_data_0

    .line 220
    const-string v0, "RingtoneRecommendationDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->playRingtone(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Z)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->playRingtone(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Z)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
