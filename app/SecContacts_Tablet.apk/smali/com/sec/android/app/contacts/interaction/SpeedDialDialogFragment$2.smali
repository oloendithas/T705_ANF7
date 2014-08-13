.class Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;
.super Ljava/lang/Object;
.source "SpeedDialDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "dismissDialog":Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 115
    .local v3, "resId":I
    sparse-switch v3, :sswitch_data_0

    .line 141
    const/4 v1, 0x1

    .line 142
    const-string v4, "SpeedDialDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    if-eqz v1, :cond_0

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 150
    :cond_0
    return-void

    .line 117
    :sswitch_0
    const/4 v1, 0x1

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "createIntent":Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v4, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v4, "has_result"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string v4, "is_speed_dial"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string v4, "index"

    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$000()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 128
    .end local v0    # "createIntent":Landroid/content/Intent;
    :sswitch_1
    const/4 v1, 0x1

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_TAB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "pickerIntent":Landroid/content/Intent;
    const-string v4, "additional"

    const-string v5, "phone"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v4, "from_speed_dial"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const-string v4, "has_result"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v4, "index"

    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$000()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v4, "actionbar_title"

    const-string v5, "Speed dial setting"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x7f0e0267 -> :sswitch_1
        0x7f0e0321 -> :sswitch_0
    .end sparse-switch
.end method
