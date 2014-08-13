.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V
    .locals 0

    .prologue
    .line 5611
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 5616
    const-string v3, "ContactDetailFragment"

    const-string v4, "mfourthanctionClickListener---clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5649
    :cond_0
    :goto_0
    return-void

    .line 5619
    :cond_1
    if-eqz p1, :cond_0

    .line 5622
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->viewForVideoCall:Landroid/view/View;
    invoke-static {v3, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4402(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 5624
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5625
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTY is  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v5, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isttyON:Z
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5629
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5630
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0504

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5634
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 5635
    .local v0, "entry1":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v3, :cond_0

    .line 5637
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local v0    # "entry1":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->detailViewEntry1:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4502(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5638
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->detailViewEntry1:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->userNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1502(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 5640
    const-string v3, "ContactDetailFragment"

    const-string v4, "mfourthanctionClickListener---starting"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5643
    .local v2, "video_calling_switch":Landroid/content/SharedPreferences;
    const-string v3, "video_switch"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5646
    .local v1, "isVideoCallingOn":Ljava/lang/Boolean;
    const-string v3, "ContactDetailFragment"

    const-string v4, "mfourthanctionClickListener---ending"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->setState(I)V

    goto/16 :goto_0
.end method
