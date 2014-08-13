.class Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/contacts/activities/JoinedContactActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 189
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 190
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    .line 195
    .local v0, "activity":Lcom/sec/android/app/contacts/activities/JoinedContactActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    if-eqz p3, :cond_0

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    # getter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 198
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    # setter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$102(I)I

    .line 199
    # getter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I
    invoke-static {}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLinkedContactsCount(I)V

    .line 200
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setExplainText()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-eqz p3, :cond_0

    .line 204
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
