.class Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;
.super Ljava/lang/Object;
.source "ListHoverManager.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/ListHoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListHoverListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/contacts/ListHoverManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/ListHoverManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->this$0:Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method private findEllipsizedTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 251
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 252
    check-cast v3, Landroid/view/ViewGroup;

    .line 253
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 255
    .local v0, "childcount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 256
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->findEllipsizedTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 257
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 266
    .end local v0    # "childcount":I
    .end local v1    # "i":I
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :goto_1
    return-object v2

    .line 255
    .restart local v0    # "childcount":I
    .restart local v1    # "i":I
    .restart local v2    # "textView":Landroid/widget/TextView;
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "childcount":I
    .end local v1    # "i":I
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 262
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    move-object v2, p1

    goto :goto_1

    .line 266
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "hoverPopupTextView"    # Landroid/widget/TextView;
    .param p2, "listItemView"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->findEllipsizedTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 240
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "fingerTextView"    # Landroid/widget/TextView;
    .param p2, "primaryTextView"    # Landroid/widget/TextView;
    .param p3, "secondaryTextView"    # Landroid/widget/TextView;

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 203
    .local v2, "temp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 210
    .restart local v2    # "temp":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_1
    if-eqz v2, :cond_2

    .line 215
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v0, "span":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 224
    if-eqz p1, :cond_3

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0    # "span":Landroid/text/Spannable;
    :cond_3
    :goto_0
    return-object v1

    .line 227
    :cond_4
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "hoverTextView"    # Landroid/widget/TextView;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 193
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "hoverPopupWindow"    # Landroid/widget/HoverPopupWindow;

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    .local v0, "hoverLinearLayout":Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v5

    .line 161
    :cond_1
    const v6, 0x7f0901e7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    .local v1, "hoverPopupTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 167
    iget-object v5, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->this$0:Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getPrimaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 168
    .local v2, "primaryTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->this$0:Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getSecondaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 170
    .local v3, "secondaryTextView":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->setHoverTextWidth(Landroid/widget/TextView;)V

    .line 172
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;->makeHoverText(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 174
    .local v4, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    invoke-virtual {p2, v4}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 179
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_1
.end method
