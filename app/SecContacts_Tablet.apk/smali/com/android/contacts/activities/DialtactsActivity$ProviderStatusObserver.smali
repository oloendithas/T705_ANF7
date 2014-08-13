.class Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;
.super Landroid/database/ContentObserver;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProviderStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    .line 1607
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1608
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "b"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1611
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1614
    .local v6, "cursor_ContactsStatus":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1615
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    .line 1617
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange mContactsDB_Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1622
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->checkCallLogFavoriteList()V
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 1628
    :cond_2
    return-void
.end method
