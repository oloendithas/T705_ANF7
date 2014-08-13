.class Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;
.super Landroid/content/AsyncQueryHandler;
.source "RcsContactListPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mQueryHandler, onQueryComplete"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    .line 100
    check-cast v2, Landroid/net/Uri;

    .line 101
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 103
    .local v0, "isRcs":Z
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete cookie:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p3, :cond_1

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    # invokes: Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->access$000(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const-string v4, "data1"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "sipUri":Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete, sipUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 118
    .end local v1    # "sipUri":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 123
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->updateView(Landroid/view/View;)V

    .line 126
    :cond_2
    return-void

    .line 115
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method
