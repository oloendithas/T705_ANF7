.class Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceIdQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        "Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .locals 0
    .param p2, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .line 1335
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1336
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->mContext:Landroid/content/Context;

    .line 1337
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p3, "x2"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1346
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1347
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_type_and_data_set"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.osp.app.signin/directshare"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1351
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "sourceid"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1353
    .local v6, "cur":Landroid/database/Cursor;
    return-object v6
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 1330
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1359
    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->onQueryCompleted(Landroid/database/Cursor;)V
    invoke-static {p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/database/Cursor;)V

    .line 1360
    if-eqz p2, :cond_0

    .line 1361
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1363
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1330
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .locals 4
    .param p1, "target"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1342
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1330
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$SourceIdQueryTask;->onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    return-void
.end method
