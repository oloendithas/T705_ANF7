.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetailUri(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    .locals 9
    .param p1, "adapter"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "groupSize"    # I
    .param p6, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 347
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {v4, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    .line 357
    .local v4, "loadDetailInfoData":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    iput-object p6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->phoneNumber:Ljava/lang/String;

    .line 366
    iput p2, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    .line 367
    if-eqz p2, :cond_0

    .line 368
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$000()I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->prevPos:I

    .line 370
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 371
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 372
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    new-array v1, p5, [J

    .line 376
    .local v1, "ids":[J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v2, "idsStr":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p5, :cond_2

    .line 379
    if-nez v3, :cond_1

    .line 380
    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    :goto_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_1
    const-string v6, " OR _id= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 389
    :cond_2
    iput-object v1, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->ids:[J

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->idsStr:Ljava/lang/String;

    .line 392
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$200()I

    move-result v6

    if-ne v6, p2, :cond_4

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$300()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 393
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 396
    :cond_3
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$302(Z)Z

    .line 399
    :cond_4
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I
    invoke-static {p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$002(I)I

    .line 401
    return-object v4
.end method
