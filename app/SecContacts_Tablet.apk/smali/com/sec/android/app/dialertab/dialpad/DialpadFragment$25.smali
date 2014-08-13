.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 8025
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeHoverText(Landroid/widget/TextView;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "fingerTextView"    # Landroid/widget/TextView;

    .prologue
    .line 8069
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "makeHoverText"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 8070
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8071
    .local v1, "hoverText":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 8072
    .local v0, "firstLineLen":I
    const/4 v2, 0x0

    .local v2, "mName":Z
    const/4 v3, 0x0

    .line 8074
    .local v3, "mNumber":Z
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchSubName:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 8075
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchName:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchName:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8076
    const/4 v2, 0x1

    .line 8079
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8080
    const/4 v2, 0x1

    .line 8083
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8084
    const/4 v2, 0x1

    .line 8087
    :cond_2
    if-eqz v2, :cond_6

    .line 8090
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchName:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8091
    .local v5, "temp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 8092
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8094
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$6900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8095
    if-eqz v5, :cond_4

    .line 8096
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8098
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNameEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8099
    if-eqz v5, :cond_5

    .line 8100
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8102
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 8106
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8107
    const/4 v3, 0x1

    .line 8110
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 8111
    const/4 v3, 0x1

    .line 8114
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 8115
    const/4 v3, 0x1

    .line 8118
    :cond_9
    if-eqz v3, :cond_d

    .line 8120
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8122
    .restart local v5    # "temp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_a

    .line 8123
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8126
    :cond_a
    if-eqz v5, :cond_b

    .line 8127
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8129
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberColor:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8130
    if-eqz v5, :cond_c

    .line 8131
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8133
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchNumberEnd:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$7300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 8134
    if-eqz v5, :cond_d

    .line 8135
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8140
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_d
    if-eqz v3, :cond_10

    .line 8142
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchSubName:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    if-eqz v2, :cond_f

    .line 8143
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8144
    .local v4, "span":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-interface {v4, v6, v7, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 8146
    if-eqz p1, :cond_e

    .line 8147
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8160
    .end local v4    # "span":Landroid/text/Spannable;
    :cond_e
    :goto_0
    return-object v1

    .line 8151
    :cond_f
    if-eqz p1, :cond_e

    .line 8152
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8155
    :cond_10
    if-eqz v2, :cond_e

    .line 8156
    if-eqz p1, :cond_e

    .line 8157
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "hpw"    # Landroid/widget/HoverPopupWindow;

    .prologue
    const v6, 0x7f090297

    const/4 v4, 0x0

    .line 8027
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mHoverListener onSetContentView"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 8028
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8031
    .local v0, "hoverLinearLayout":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    move v3, v4

    .line 8053
    :goto_0
    return v3

    .line 8035
    :cond_0
    const v3, 0x7f09037c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8036
    .local v2, "hoverTextView":Landroid/widget/TextView;
    if-nez v2, :cond_1

    move v3, v4

    .line 8037
    goto :goto_0

    .line 8041
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->makeHoverText(Landroid/widget/TextView;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 8042
    .local v1, "hoverText":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 8043
    :cond_2
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mHoverListener delete popup"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 8044
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8045
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 8047
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setHoverPopupType(I)V

    move v3, v4

    .line 8048
    goto :goto_0

    .line 8050
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$25;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f02003d

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8052
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 8053
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "hoverTextView"    # Landroid/widget/TextView;

    .prologue
    .line 8057
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8065
    .local v0, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8066
    return-void
.end method
