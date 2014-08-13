.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;
.super Ljava/lang/Object;
.source "NamecardGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setButtonEvent2(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

.field final synthetic val$dataUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->val$dataUri:Landroid/net/Uri;

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

    .line 330
    invoke-virtual {p1, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v6, "actionPhone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 333
    .local v8, "isSuperPrimary":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 335
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, "mimetype":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 342
    if-ne v8, v11, :cond_5

    .line 343
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 344
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_2
    if-eq v8, v11, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 358
    :cond_3
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    .line 360
    .local v10, "phoneIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 364
    .end local v10    # "phoneIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void

    .line 348
    .restart local v9    # "mimetype":Ljava/lang/String;
    :cond_5
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_4

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e031f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v11, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_1
.end method
