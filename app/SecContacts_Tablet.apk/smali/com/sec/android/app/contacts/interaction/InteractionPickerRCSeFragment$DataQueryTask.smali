.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        "Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;",
        ">;"
    }
.end annotation


# static fields
.field static final CLAUSE_DATA:Ljava/lang/String; = "data"


# instance fields
.field final DETAIL_DATA_PROJECTION:[Ljava/lang/String;

.field private isSelectAll:Z

.field private final mContext:Landroid/content/Context;

.field private mPartition:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V
    .locals 3
    .param p2, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 1591
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1572
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    .line 1592
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    .line 1593
    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    const-string v1, "vnd.android.cursor.item/rcs_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 1638
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1604
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1606
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    aget-object v8, p2, v1

    .line 1607
    .local v8, "targetContactId":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p2, v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    .line 1608
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsFragmentShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1609
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1611
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1620
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->nUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1624
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v6

    .line 1614
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1615
    .local v9, "uri":Landroid/net/Uri;
    const-string v1, "entities"

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1616
    .local v7, "entityUri":Landroid/net/Uri;
    iput-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1617
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "entityUri":Landroid/net/Uri;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    move-object v6, v4

    .line 1624
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 1566
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsFragmentShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->isSelectAll:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1632
    :cond_0
    if-eqz p2, :cond_1

    .line 1633
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1635
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1566
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mFromSelectAll:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->isSelectAll:Z

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1599
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1566
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$DataQueryTask;->onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    return-void
.end method
