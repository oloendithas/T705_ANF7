.class public Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;
.super Landroid/app/ListActivity;
.source "PinnedHeaderListDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 143
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 144
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 107
    const v9, 0x7f0401ae

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setContentView(I)V

    .line 109
    new-instance v0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "adapter":Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 112
    .local v4, "extras":Landroid/os/Bundle;
    const-string v9, "counts"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 113
    .local v1, "counts":[I
    const-string v9, "names"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "names":[Ljava/lang/String;
    const-string v9, "showIfEmpty"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v8

    .line 115
    .local v8, "showIfEmpty":[Z
    const-string v9, "delays"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 117
    .local v3, "delays":[I
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    if-nez v3, :cond_1

    .line 118
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing required extras"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 121
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->setHeaders([Ljava/lang/String;)V

    .line 122
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v1

    if-ge v5, v9, :cond_3

    .line 123
    aget-boolean v10, v8, v5

    aget-object v9, v6, v5

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v0, v10, v9}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(ZZ)V

    .line 124
    array-length v9, v6

    # setter for: Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mPinnedHeaderCount:I
    invoke-static {v0, v9}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->access$002(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;I)I

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    const/4 v5, 0x0

    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_4

    .line 128
    move v7, v5

    .line 129
    .local v7, "sectionId":I
    aget-object v9, v6, v5

    aget v10, v1, v5

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 130
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v9, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;

    invoke-direct {v10, p0, v0, v7, v2}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;-><init>(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;ILandroid/database/Cursor;)V

    aget v11, v3, v5

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 139
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v7    # "sectionId":I
    :cond_4
    return-void
.end method
