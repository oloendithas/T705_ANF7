.class public Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "PhoneNumberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;
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
        "Lcom/android/contacts/list/PhoneNumberPickerFragment;",
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

.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 3
    .param p2, "target"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .line 245
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 236
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

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    .line 246
    # getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataQueryTask"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    # getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I
    invoke-static {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$300(Lcom/android/contacts/list/PhoneNumberPickerFragment;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 329
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 301
    :sswitch_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :sswitch_1
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :sswitch_2
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
    .end sparse-switch
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/contacts/list/PhoneNumberPickerFragment;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "target"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 257
    # getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataQueryTask : query start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    aget-object v8, p2, v1

    .line 261
    .local v8, "targetContactId":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p2, v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    .line 263
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-direct {p0, v8}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 265
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    # getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->nUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$200(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 273
    return-object v6

    .line 267
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 268
    .local v9, "uri":Landroid/net/Uri;
    const-string v1, "entities"

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 269
    .local v7, "entityUri":Landroid/net/Uri;
    iput-object v7, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 270
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->getSelection()Ljava/lang/String;

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
    .line 231
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->doInBackground(Lcom/android/contacts/list/PhoneNumberPickerFragment;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/list/PhoneNumberPickerFragment;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "target"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 280
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->isSelectAll:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 281
    if-eqz p2, :cond_0

    .line 282
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->onPostExecute(Lcom/android/contacts/list/PhoneNumberPickerFragment;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 4
    .param p1, "target"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 253
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->onPreExecute(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    return-void
.end method
