.class Lcom/android/contacts/list/DefaultContactListAdapter$2;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$2;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 854
    .local v0, "baseUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 855
    .local v1, "mPhonenumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$2;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 857
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$2;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$200(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 858
    const/4 v2, 0x1

    return v2
.end method
