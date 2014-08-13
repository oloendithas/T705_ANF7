.class Lcom/android/contacts/group/GroupEditorFragment$5;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 605
    .local v1, "vibrationUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->getVibrationTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "vibrationTitle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$302(Lcom/android/contacts/group/GroupEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .end local v0    # "vibrationTitle":Ljava/lang/String;
    .end local v1    # "vibrationUri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVibrationPickerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 613
    return-void
.end method
