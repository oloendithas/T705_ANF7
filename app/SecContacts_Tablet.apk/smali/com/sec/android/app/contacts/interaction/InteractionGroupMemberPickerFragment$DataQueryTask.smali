.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "InteractionGroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
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
        "Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;",
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

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 3
    .param p2, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .line 1277
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1260
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

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    .line 1278
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    .line 1279
    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1361
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1333
    :sswitch_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1341
    :sswitch_1
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1348
    :sswitch_2
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1331
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0x122 -> :sswitch_1
    .end sparse-switch
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 1318
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1289
    const-string v2, "InteractionGroupMemberPickerFragment"

    const-string v3, "DataQueryTask : query start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1292
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    aget-object v7, p2, v2

    .line 1293
    .local v7, "targetContactId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p2, v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    .line 1295
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1304
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 1299
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1300
    .local v8, "uri":Landroid/net/Uri;
    const-string v2, "entities"

    invoke-static {v8, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1301
    .local v1, "entityUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 1254
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->isSelectAll:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Z)V

    .line 1312
    if-eqz p2, :cond_0

    .line 1313
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1315
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1254
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->isSelectAll:Z

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1285
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1254
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    return-void
.end method
