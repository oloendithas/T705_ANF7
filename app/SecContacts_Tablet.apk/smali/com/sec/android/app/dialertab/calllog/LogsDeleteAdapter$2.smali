.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;
.super Ljava/lang/Object;
.source "LogsDeleteAdapter.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field final synthetic val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 0

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "fingerTextView"    # Landroid/widget/TextView;
    .param p2, "headerView"    # Landroid/view/View;

    .prologue
    .line 1516
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1517
    .local v1, "hoverText":Ljava/lang/StringBuffer;
    const-string v6, "LogsDeleteAdapter"

    const-string v7, "calllog makeHoverText"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/4 v2, 0x0

    .local v2, "mName":Z
    const/4 v3, 0x0

    .line 1519
    .local v3, "mNumber":Z
    const/4 v0, 0x0

    .line 1522
    .local v0, "firstLineLen":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1523
    const/4 v2, 0x1

    .line 1525
    :cond_0
    if-eqz v2, :cond_2

    .line 1528
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1529
    .local v5, "temp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    .line 1530
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1532
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 1535
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1536
    const/4 v3, 0x1

    .line 1538
    :cond_3
    if-eqz v3, :cond_5

    .line 1540
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1542
    .restart local v5    # "temp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 1543
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1546
    :cond_4
    if-eqz v5, :cond_5

    .line 1547
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1551
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v3, :cond_8

    .line 1553
    if-eqz v2, :cond_7

    .line 1554
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1555
    .local v4, "span":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-interface {v4, v6, v7, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1557
    if-eqz p1, :cond_6

    .line 1558
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    .end local v4    # "span":Landroid/text/Spannable;
    :cond_6
    :goto_0
    return-object v1

    .line 1562
    :cond_7
    if-eqz p1, :cond_6

    .line 1563
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1566
    :cond_8
    if-eqz v2, :cond_6

    .line 1567
    if-eqz p1, :cond_6

    .line 1568
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "hpw"    # Landroid/widget/HoverPopupWindow;

    .prologue
    const/4 v3, 0x0

    .line 1483
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1485
    .local v0, "hoverLinearLayout":Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v3

    .line 1489
    :cond_1
    const v4, 0x7f09037c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1490
    .local v2, "hoverTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1495
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1496
    .local v1, "hoverText":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 1497
    :cond_2
    const-string v4, "LogsDeleteAdapter"

    const-string v5, "mHoverListener delete popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1499
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1501
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0

    .line 1505
    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1507
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "hoverTextView"    # Landroid/widget/TextView;

    .prologue
    .line 1511
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1512
    .local v0, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    return-void
.end method
