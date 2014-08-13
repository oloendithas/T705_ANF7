.class Lcom/android/contacts/group/GroupEditorFragment$9;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->createRecipientListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
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
    .line 1406
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 1410
    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 1411
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1412
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v1, v3

    .line 1414
    .local v1, "contactId":J
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1415
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 1419
    .end local v1    # "contactId":J
    :cond_0
    return-void
.end method
