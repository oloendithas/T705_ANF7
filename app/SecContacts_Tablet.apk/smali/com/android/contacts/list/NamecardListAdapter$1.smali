.class Lcom/android/contacts/list/NamecardListAdapter$1;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;

.field final synthetic val$position:I

.field final synthetic val$queryString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->val$queryString:Ljava/lang/String;

    iput p3, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    iget-boolean v1, v1, Lcom/android/contacts/list/NamecardListAdapter;->isEmptyView:Z

    if-nez v1, :cond_0

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_NAMECARD_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "query_string"

    iget-object v2, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->val$queryString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "sort_order"

    iget-object v2, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mCurrentOrder:I
    invoke-static {v2}, Lcom/android/contacts/list/NamecardListAdapter;->access$000(Lcom/android/contacts/list/NamecardListAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v1, "curr_position"

    iget v2, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter$1;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardListAdapter;->access$100(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
