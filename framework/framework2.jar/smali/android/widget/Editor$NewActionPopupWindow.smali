.class Landroid/widget/Editor$NewActionPopupWindow;
.super Landroid/widget/Editor$NewPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x1090129

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x109012b

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109012a


# instance fields
.field private mActionBarHeight:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mDividerImageView7:Landroid/widget/ImageView;

.field private mDividerImageView8:Landroid/widget/ImageView;

.field private mHandlerHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 3817
    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$NewPinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3817
    invoke-direct {p0, p1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3854
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    .line 3855
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3856
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3857
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_a5

    .line 3858
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3859
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    .line 3860
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    .line 3861
    const/4 v1, 0x0

    .line 3866
    :goto_4c
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditNewActionPopupDividerRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    .line 3867
    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    .line 3868
    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    .line 3870
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3871
    iget-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3872
    iget-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3874
    return-void

    .line 3863
    :cond_a5
    iput v5, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_4c
.end method

.method protected getNewActionPopupPosition([I)V
    .registers 38
    .param p1, "position"    # [I

    .prologue
    .line 4185
    if-nez p1, :cond_a

    .line 4186
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 4189
    :cond_a
    const/16 v16, 0x1

    .line 4190
    .local v16, "menuItemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    .line 4191
    .local v5, "canCut":Z
    if-eqz v5, :cond_1e

    add-int/lit8 v16, v16, 0x1

    .line 4192
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    .line 4193
    .local v4, "canCopy":Z
    if-eqz v4, :cond_30

    add-int/lit8 v16, v16, 0x1

    .line 4194
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    .line 4195
    .local v7, "canPaste":Z
    if-eqz v7, :cond_42

    add-int/lit8 v16, v16, 0x1

    .line 4196
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "clipboardEx"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/ClipboardExManager;

    .line 4197
    .local v9, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v32

    if-eqz v32, :cond_473

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v32, v0

    if-eqz v32, :cond_473

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v32

    if-eqz v32, :cond_473

    if-eqz v9, :cond_473

    invoke-virtual {v9}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v32

    if-lez v32, :cond_473

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/widget/Editor;->mClipboardEnable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_473

    const/4 v3, 0x1

    .line 4201
    .local v3, "canClipboard":Z
    :goto_a1
    if-eqz v3, :cond_a5

    add-int/lit8 v16, v16, 0x1

    .line 4202
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->canTranslate()Z

    move-result v32

    if-eqz v32, :cond_476

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_476

    const/4 v8, 0x1

    .line 4203
    .local v8, "canTranslate":Z
    :goto_c4
    if-eqz v8, :cond_c8

    add-int/lit8 v16, v16, 0x1

    .line 4204
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d8

    add-int/lit8 v16, v16, 0x1

    .line 4205
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e8

    add-int/lit8 v16, v16, 0x1

    .line 4206
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v6

    .line 4207
    .local v6, "canDictionary":Z
    if-eqz v6, :cond_f6

    add-int/lit8 v16, v16, 0x1

    .line 4209
    :cond_f6
    const/16 v17, 0x0

    .line 4210
    .local v17, "menuLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_479

    .line 4211
    const/16 v17, 0x4

    .line 4216
    :goto_11e
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 4217
    .local v20, "screen":[I
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 4218
    .local v31, "window":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4220
    const/16 v32, 0x0

    aget v32, v20, v32

    const/16 v33, 0x0

    aget v33, v31, v33

    sub-int v18, v32, v33

    .line 4221
    .local v18, "parentViewPositionX":I
    const/16 v32, 0x1

    aget v32, v20, v32

    const/16 v33, 0x1

    aget v33, v31, v33

    sub-int v19, v32, v33

    .line 4222
    .local v19, "parentViewPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v30

    .line 4223
    .local v30, "viewportToContentVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v29

    .line 4224
    .local v29, "viewportToContentHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 4225
    .local v22, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    .line 4226
    .local v21, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v24

    .line 4227
    .local v24, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v23

    .line 4228
    .local v23, "selEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v25

    .line 4229
    .local v25, "startLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 4230
    .local v10, "endLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v27, v32, v30

    .line 4231
    .local v27, "startLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v26, v32, v30

    .line 4232
    .local v26, "startLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v12, v32, v30

    .line 4233
    .local v12, "endLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v11, v32, v30

    .line 4234
    .local v11, "endLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v28, v32, v29

    .line 4235
    .local v28, "startX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v13, v32, v29

    .line 4236
    .local v13, "endX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/text/Layout;->getWidth()I

    move-result v15

    .line 4237
    .local v15, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4238
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4239
    .local v14, "handlerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    .line 4241
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_47d

    .line 4242
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    move/from16 v32, v0

    add-int/lit8 v33, v16, -0x1

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    move/from16 v33, v0

    mul-int v33, v33, v16

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    .line 4251
    :goto_314
    move/from16 v0, v25

    if-ne v0, v10, :cond_4bd

    .line 4252
    const/16 v32, 0x0

    sub-int v33, v13, v28

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 4257
    :goto_32c
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_503

    .line 4258
    const/16 v32, 0x0

    aget v32, p1, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_4d5

    .line 4259
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v34, v34, v18

    add-int v33, v33, v34

    aput v33, p1, v32

    .line 4264
    :cond_352
    :goto_352
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_38a

    .line 4265
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, p1, v32

    .line 4266
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_38a

    .line 4267
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 4274
    :cond_38a
    :goto_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3af

    .line 4275
    const/4 v2, 0x0

    .line 4278
    :cond_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v32

    if-eqz v32, :cond_472

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v32

    if-eqz v32, :cond_472

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v32

    if-eqz v32, :cond_472

    .line 4279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Editor$SelectionModifierCursorController;->isStartHandleOnTop()Z

    move-result v32

    if-eqz v32, :cond_531

    .line 4280
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v27, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 4281
    const/4 v14, 0x0

    .line 4286
    :goto_3f8
    move/from16 v0, v27

    if-ne v0, v12, :cond_53f

    .line 4288
    const/16 v32, 0x1

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_41a

    .line 4289
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v33, v0

    add-int v33, v33, v11

    aput v33, p1, v32

    .line 4301
    :cond_41a
    :goto_41a
    if-gez v27, :cond_43a

    const/16 v32, 0x1

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_43a

    .line 4302
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v33, v0

    add-int v33, v33, v11

    aput v33, p1, v32

    .line 4306
    :cond_43a
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v19

    move/from16 v0, v21

    move/from16 v1, v32

    if-gt v0, v1, :cond_454

    .line 4307
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v21, v33

    sub-int v33, v33, v19

    aput v33, p1, v32

    .line 4310
    :cond_454
    const/16 v32, 0x1

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v21

    if-le v0, v1, :cond_472

    .line 4311
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v21, v33

    aput v33, p1, v32

    .line 4314
    :cond_472
    return-void

    .line 4197
    .end local v2    # "actionBarHeight":I
    .end local v3    # "canClipboard":Z
    .end local v6    # "canDictionary":Z
    .end local v8    # "canTranslate":Z
    .end local v10    # "endLine":I
    .end local v11    # "endLineBottom":I
    .end local v12    # "endLineTop":I
    .end local v13    # "endX":I
    .end local v14    # "handlerHeight":I
    .end local v15    # "maxWidth":I
    .end local v17    # "menuLimit":I
    .end local v18    # "parentViewPositionX":I
    .end local v19    # "parentViewPositionY":I
    .end local v20    # "screen":[I
    .end local v21    # "screenHeight":I
    .end local v22    # "screenWidth":I
    .end local v23    # "selEnd":I
    .end local v24    # "selStart":I
    .end local v25    # "startLine":I
    .end local v26    # "startLineBottom":I
    .end local v27    # "startLineTop":I
    .end local v28    # "startX":I
    .end local v29    # "viewportToContentHorizontalOffset":I
    .end local v30    # "viewportToContentVerticalOffset":I
    .end local v31    # "window":[I
    :cond_473
    const/4 v3, 0x0

    goto/16 :goto_a1

    .line 4202
    .restart local v3    # "canClipboard":Z
    :cond_476
    const/4 v8, 0x0

    goto/16 :goto_c4

    .line 4213
    .restart local v6    # "canDictionary":Z
    .restart local v8    # "canTranslate":Z
    .restart local v17    # "menuLimit":I
    :cond_479
    const/16 v17, 0x6

    goto/16 :goto_11e

    .line 4244
    .restart local v2    # "actionBarHeight":I
    .restart local v10    # "endLine":I
    .restart local v11    # "endLineBottom":I
    .restart local v12    # "endLineTop":I
    .restart local v13    # "endX":I
    .restart local v14    # "handlerHeight":I
    .restart local v15    # "maxWidth":I
    .restart local v18    # "parentViewPositionX":I
    .restart local v19    # "parentViewPositionY":I
    .restart local v20    # "screen":[I
    .restart local v21    # "screenHeight":I
    .restart local v22    # "screenWidth":I
    .restart local v23    # "selEnd":I
    .restart local v24    # "selStart":I
    .restart local v25    # "startLine":I
    .restart local v26    # "startLineBottom":I
    .restart local v27    # "startLineTop":I
    .restart local v28    # "startX":I
    .restart local v29    # "viewportToContentHorizontalOffset":I
    .restart local v30    # "viewportToContentVerticalOffset":I
    .restart local v31    # "window":[I
    :cond_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4af

    .line 4245
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_314

    .line 4247
    :cond_4af
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_314

    .line 4254
    :cond_4bd
    const/16 v32, 0x0

    const/16 v33, 0x0

    aget v33, v31, v33

    div-int/lit8 v34, v15, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_32c

    .line 4260
    :cond_4d5
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_352

    .line 4261
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_352

    .line 4270
    :cond_503
    const/16 v32, 0x0

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int v32, v32, v18

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_38a

    .line 4271
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_38a

    .line 4283
    :cond_531
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v27, v33

    aput v33, p1, v32

    goto/16 :goto_3f8

    .line 4292
    :cond_53f
    const/16 v32, 0x1

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_41a

    .line 4293
    add-int v32, v26, v14

    sub-int v32, v11, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_57b

    .line 4294
    const/16 v32, 0x1

    add-int v33, v26, v14

    add-int v34, v26, v14

    sub-int v34, v11, v34

    div-int/lit8 v34, v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x2

    sub-int v34, v34, v35

    add-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_41a

    .line 4296
    :cond_57b
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v33, v0

    add-int v33, v33, v11

    aput v33, p1, v32

    goto/16 :goto_41a
.end method

.method protected getTextOffset()I
    .registers 3

    .prologue
    .line 4162
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initContentView()V
    .registers 23

    .prologue
    .line 3878
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3881
    .local v4, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 3884
    .local v14, "inflater":Landroid/view/LayoutInflater;
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3886
    .local v16, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3889
    .local v17, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3890
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3891
    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3892
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3895
    const v18, 0x109012a

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3899
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x104000d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupSelectAllRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3904
    .local v5, "drawable1":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3909
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3915
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040003

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCutRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3920
    .local v6, "drawable2":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3924
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3929
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040001

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCopyRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3934
    .local v7, "drawable3":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3938
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3943
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x104000b

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3948
    .local v8, "drawable4":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3952
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3957
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 3958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040018

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3962
    .local v9, "drawable5":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3966
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    .line 3967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3971
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    .line 3972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040876

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupDictionaryRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3976
    .local v13, "drawable9":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3980
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    .line 3981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3982
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3985
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 3986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040a49

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupTranslateRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3990
    .local v10, "drawable6":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3994
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3999
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x1040877

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 4002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupShareRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 4004
    .local v11, "drawable7":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4008
    const v18, 0x1090129

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4013
    const v18, 0x109012b

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    .line 4014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x104080a

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView;->mTextEditNewActionPopupWebSearchRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 4018
    .local v12, "drawable8":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 4022
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4104
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_11

    .line 4105
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4130
    :cond_10
    :goto_10
    return-void

    .line 4106
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4107
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4108
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_10

    .line 4109
    :cond_31
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_51

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4110
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4111
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_10

    .line 4112
    :cond_51
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_71

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 4113
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4114
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_10

    .line 4115
    :cond_71
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_82

    .line 4116
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10202c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto :goto_10

    .line 4117
    :cond_82
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v0, :cond_a9

    .line 4118
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10202c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4119
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_10

    .line 4120
    :cond_a9
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_c4

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v0, :cond_c4

    .line 4121
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10202c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4122
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_10

    .line 4123
    :cond_c4
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_df

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v0, :cond_df

    .line 4124
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020463

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4125
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_10

    .line 4126
    :cond_df
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4127
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10202c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4128
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_10
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 4157
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 4136
    :pswitch_9
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4137
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4138
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    goto :goto_7

    .line 4144
    :pswitch_2b
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4145
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4146
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4147
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_7

    .line 4148
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    .line 4134
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_9
    .end packed-switch
.end method

.method protected setHeight()V
    .registers 8

    .prologue
    .line 4167
    const/4 v0, 0x0

    .line 4170
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_1
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4173
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4175
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4176
    const/high16 v2, 0x41c80000

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 4177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_53
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_53} :catch_54

    .line 4181
    :goto_53
    return-void

    .line 4178
    :catch_54
    move-exception v1

    .line 4179
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_53
.end method

.method public show()V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 4026
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    instance-of v11, v11, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v11, :cond_f

    .line 4100
    :goto_e
    return-void

    .line 4030
    :cond_f
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v12, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v12

    iput-boolean v12, v11, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    .line 4032
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 4033
    .local v2, "canCut":Z
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 4034
    .local v1, "canCopy":Z
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 4035
    .local v4, "canPaste":Z
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canTranslate()Z

    move-result v11

    if-eqz v11, :cond_1e0

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v11, :cond_1e0

    move v6, v8

    .line 4036
    .local v6, "canTranslate":Z
    :goto_4a
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v11

    if-eqz v11, :cond_1e3

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v11}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Z

    move-result v11

    if-eqz v11, :cond_1e3

    move v5, v8

    .line 4037
    .local v5, "canSuggest":Z
    :goto_5f
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboardEx"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    .line 4038
    .local v7, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v11

    if-eqz v11, :cond_1e6

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Editable;

    if-eqz v11, :cond_1e6

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v11

    if-eqz v11, :cond_1e6

    if-eqz v7, :cond_1e6

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v11

    if-lez v11, :cond_1e6

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v11, :cond_1e6

    move v0, v8

    .line 4041
    .local v0, "canClipboard":Z
    :goto_a2
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v8}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v3

    .line 4044
    .local v3, "canDictionary":Z
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4045
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_be

    .line 4046
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4049
    :cond_be
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    if-eqz v2, :cond_1e9

    move v8, v9

    :goto_c3
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4050
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1ec

    move v8, v9

    :goto_cb
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4051
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_df

    .line 4052
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4055
    :cond_df
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    if-eqz v1, :cond_1ef

    move v8, v9

    :goto_e4
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4056
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1f2

    move v8, v9

    :goto_ec
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4057
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_100

    .line 4058
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4061
    :cond_100
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    if-eqz v4, :cond_1f5

    move v8, v9

    :goto_105
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4062
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1f8

    move v8, v9

    :goto_10d
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4063
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_121

    .line 4064
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4067
    :cond_121
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    if-eqz v0, :cond_1fb

    move v8, v9

    :goto_126
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4068
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1fe

    move v8, v9

    :goto_12e
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4069
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_142

    .line 4070
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4073
    :cond_142
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    if-eqz v3, :cond_201

    move v8, v9

    :goto_147
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4074
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_204

    move v8, v9

    :goto_14f
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4075
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_163

    .line 4076
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4079
    :cond_163
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    if-eqz v6, :cond_207

    move v8, v9

    :goto_168
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4080
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_20a

    move v8, v9

    :goto_170
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4081
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_184

    .line 4082
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4085
    :cond_184
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v8, :cond_20d

    move v8, v9

    :goto_18d
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4086
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v8, :cond_210

    move v8, v9

    :goto_199
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4087
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_1ad

    .line 4088
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4091
    :cond_1ad
    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v8, :cond_212

    move v8, v9

    :goto_1b6
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4092
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v11, :cond_1c2

    move v10, v9

    :cond_1c2
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4093
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_1d6

    .line 4094
    iget-object v8, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 4097
    :cond_1d6
    iget-object v8, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8, v9, v9}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 4099
    invoke-super {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->show()V

    goto/16 :goto_e

    .end local v0    # "canClipboard":Z
    .end local v3    # "canDictionary":Z
    .end local v5    # "canSuggest":Z
    .end local v6    # "canTranslate":Z
    .end local v7    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_1e0
    move v6, v9

    .line 4035
    goto/16 :goto_4a

    .restart local v6    # "canTranslate":Z
    :cond_1e3
    move v5, v9

    .line 4036
    goto/16 :goto_5f

    .restart local v5    # "canSuggest":Z
    .restart local v7    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_1e6
    move v0, v9

    .line 4038
    goto/16 :goto_a2

    .restart local v0    # "canClipboard":Z
    .restart local v3    # "canDictionary":Z
    :cond_1e9
    move v8, v10

    .line 4049
    goto/16 :goto_c3

    :cond_1ec
    move v8, v10

    .line 4050
    goto/16 :goto_cb

    :cond_1ef
    move v8, v10

    .line 4055
    goto/16 :goto_e4

    :cond_1f2
    move v8, v10

    .line 4056
    goto/16 :goto_ec

    :cond_1f5
    move v8, v10

    .line 4061
    goto/16 :goto_105

    :cond_1f8
    move v8, v10

    .line 4062
    goto/16 :goto_10d

    :cond_1fb
    move v8, v10

    .line 4067
    goto/16 :goto_126

    :cond_1fe
    move v8, v10

    .line 4068
    goto/16 :goto_12e

    :cond_201
    move v8, v10

    .line 4073
    goto/16 :goto_147

    :cond_204
    move v8, v10

    .line 4074
    goto/16 :goto_14f

    :cond_207
    move v8, v10

    .line 4079
    goto/16 :goto_168

    :cond_20a
    move v8, v10

    .line 4080
    goto/16 :goto_170

    :cond_20d
    move v8, v10

    .line 4085
    goto/16 :goto_18d

    :cond_210
    move v8, v10

    .line 4086
    goto :goto_199

    :cond_212
    move v8, v10

    .line 4091
    goto :goto_1b6
.end method
