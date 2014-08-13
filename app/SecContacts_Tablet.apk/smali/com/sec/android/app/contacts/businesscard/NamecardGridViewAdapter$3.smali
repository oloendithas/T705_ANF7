.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;
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
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->val$dataUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 452
    invoke-virtual {p1, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v6, "actionEmail":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 455
    .local v9, "isSuperPrimary":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 457
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 461
    .local v11, "mimetype":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 462
    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 464
    if-ne v9, v12, :cond_5

    .line 465
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 466
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v11    # "mimetype":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 476
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_2
    if-eq v9, v12, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 479
    :cond_3
    const-string v1, "mailto"

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 481
    .local v10, "mailUri":Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v8, "emailIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    .end local v8    # "emailIntent":Landroid/content/Intent;
    .end local v10    # "mailUri":Landroid/net/Uri;
    :cond_4
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    return-void

    .line 470
    .restart local v11    # "mimetype":Ljava/lang/String;
    :cond_5
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    .end local v11    # "mimetype":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_4

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0232

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_1
.end method
