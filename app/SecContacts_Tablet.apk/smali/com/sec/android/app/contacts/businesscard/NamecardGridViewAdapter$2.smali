.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;
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
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->val$dataUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 386
    invoke-virtual {p1, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v6, "actionPhone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 389
    .local v8, "isSuperPrimary":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->val$dataUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 391
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 395
    .local v9, "mimetype":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    const-string v0, "is_super_primary"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 398
    if-ne v8, v11, :cond_6

    .line 399
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 400
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 410
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_2
    if-eq v8, v11, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v11, :cond_8

    .line 413
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ","

    const-string v5, "P"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    const-string v5, "W"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    .local v10, "smsIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    const-string v0, "com.android.mms"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    .end local v10    # "smsIntent":Landroid/content/Intent;
    :cond_5
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    return-void

    .line 404
    .restart local v9    # "mimetype":Ljava/lang/String;
    :cond_6
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    .end local v9    # "mimetype":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_5

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0233

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_1
.end method
