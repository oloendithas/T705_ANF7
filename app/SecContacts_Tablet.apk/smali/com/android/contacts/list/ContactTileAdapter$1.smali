.class Lcom/android/contacts/list/ContactTileAdapter$1;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/contacts/list/ContactTileView;)V
    .locals 3
    .param p1, "contactTileView"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$202(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    .line 883
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->access$302(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 885
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 886
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 888
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 891
    :cond_0
    return-void
.end method

.method public onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V
    .locals 3
    .param p1, "contactTileView"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V

    .line 917
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$600(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$202(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    .line 919
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->access$302(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 920
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 921
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 922
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    # setter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 925
    :cond_0
    return-void
.end method

.method public onKey(Lcom/android/contacts/list/ContactTileView;ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "views"    # Lcom/android/contacts/list/ContactTileView;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 895
    packed-switch p2, :pswitch_data_0

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 897
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 898
    const/4 v1, 0x0

    .line 900
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactTileView;->getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 901
    if-eqz v1, :cond_0

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 904
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 905
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
