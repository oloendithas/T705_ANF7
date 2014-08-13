.class Lcom/android/contacts/list/NamecardListAdapter$4;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListAdapter;->setButtonEvent2(Lcom/android/contacts/list/NamecardListAdapter$ViewCache;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;

.field final synthetic val$dataUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->val$dataUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 372
    invoke-virtual {p1, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 373
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v6, "actionPhone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardListAdapter;->access$300(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 376
    .local v7, "dataCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 377
    .local v8, "isSuperPrimary":I
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "mimetype":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 384
    if-ne v8, v11, :cond_5

    .line 385
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 386
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 396
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_2
    if-eq v8, v11, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 400
    :cond_3
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardListAdapter;->access$400(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    .line 402
    .local v10, "phoneIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardListAdapter;->access$500(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    .end local v10    # "phoneIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/contacts/list/NamecardListAdapter$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/list/NamecardListAdapter$4$1;-><init>(Lcom/android/contacts/list/NamecardListAdapter$4;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    return-void

    .line 390
    .restart local v9    # "mimetype":Ljava/lang/String;
    :cond_5
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_4

    .line 404
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$4;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # invokes: Lcom/android/contacts/list/NamecardListAdapter;->buildDialog(Ljava/util/ArrayList;I)V
    invoke-static {v0, v6, v11}, Lcom/android/contacts/list/NamecardListAdapter;->access$600(Lcom/android/contacts/list/NamecardListAdapter;Ljava/util/ArrayList;I)V

    goto :goto_1
.end method
