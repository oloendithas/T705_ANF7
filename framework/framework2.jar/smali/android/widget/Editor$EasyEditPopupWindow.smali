.class Landroid/widget/Editor$EasyEditPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900d0


# instance fields
.field private mDeleteTextView:Landroid/widget/TextView;

.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 2434
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2434
    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$EasyEditPopupWindow;

    .prologue
    .line 2434
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$EasyEditPopupWindow;
    .param p1, "x1"    # Landroid/widget/Editor$EasyEditDeleteListener;

    .prologue
    .line 2434
    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;->setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V

    return-void
.end method

.method private setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Editor$EasyEditDeleteListener;

    .prologue
    .line 2476
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    .line 2477
    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .registers 2
    .param p1, "positionY"    # I

    .prologue
    .line 2512
    return p1
.end method

.method protected createPopupWindow()V
    .registers 5

    .prologue
    .line 2444
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 2446
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2447
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2448
    return-void
.end method

.method protected getTextOffset()I
    .registers 3

    .prologue
    .line 2500
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 2501
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected getVerticalLocalPosition(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 2506
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_a

    .line 2491
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 2493
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    .line 2494
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2495
    return-void
.end method

.method protected initContentView()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 2452
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2453
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2454
    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2455
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10808f8

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2458
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2461
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2464
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x10900d0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    .line 2465
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2466
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    const v4, 0x1040671

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2467
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2468
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2469
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2481
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-virtual {v0}, Landroid/text/style/EasyEditSpan;->isDeleteEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    if-eqz v0, :cond_1b

    .line 2484
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v1}, Landroid/widget/Editor$EasyEditDeleteListener;->onDeleteClick(Landroid/text/style/EasyEditSpan;)V

    .line 2486
    :cond_1b
    return-void
.end method

.method public setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V
    .registers 2
    .param p1, "easyEditSpan"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 2472
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 2473
    return-void
.end method
