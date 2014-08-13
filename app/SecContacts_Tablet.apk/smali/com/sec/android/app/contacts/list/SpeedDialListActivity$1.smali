.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 362
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    .line 363
    .local v0, "maxRange":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    .line 364
    const/16 v0, 0x3e7

    .line 368
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpdlRange:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v5, v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 371
    return-void

    .line 346
    .end local v0    # "maxRange":I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v2, v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v2, v2, -0x64

    iput v2, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v2

    add-int/lit16 v2, v2, 0x384

    iput v2, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v2

    add-int/lit16 v2, v2, 0x384

    if-eq v1, v2, :cond_1

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v2, v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    goto/16 :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    goto/16 :goto_0

    .line 366
    .restart local v0    # "maxRange":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v0, v1, -0x1

    goto/16 :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x7f090463
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
