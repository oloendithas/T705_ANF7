.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field public mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    new-instance v8, Landroid/widget/SearchView$1;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v8, Landroid/widget/SearchView$2;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v8, Landroid/widget/SearchView$3;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 873
    new-instance v8, Landroid/widget/SearchView$6;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 922
    new-instance v8, Landroid/widget/SearchView$7;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1183
    new-instance v8, Landroid/widget/SearchView$8;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1410
    new-instance v8, Landroid/widget/SearchView$9;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1421
    new-instance v8, Landroid/widget/SearchView$10;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1715
    new-instance v8, Landroid/widget/SearchView$11;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$11;-><init>(Landroid/widget/SearchView;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 251
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 254
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 255
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101046e

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 256
    iget v8, v6, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_1c5

    .line 257
    const v8, 0x1090121

    const/4 v9, 0x1

    invoke-virtual {v3, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 264
    :goto_6c
    const v8, 0x10203c4

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    .line 265
    const v8, 0x10203c8

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SearchView$SearchAutoComplete;

    iput-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    .line 266
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8, p0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    .line 268
    const v8, 0x10203c5

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 269
    const v8, 0x10203c7

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 270
    const v8, 0x10203ca

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 271
    const v8, 0x10203cb

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    .line 272
    const v8, 0x10203c9

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 273
    const v8, 0x10203cc

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    .line 274
    const v8, 0x10203c6

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 276
    iget-object v8, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v8, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v8, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v8, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 283
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 284
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 286
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v9, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v9, Landroid/widget/SearchView$4;

    invoke-direct {v9, p0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 297
    sget-object v8, Lcom/android/internal/R$styleable;->SearchView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 298
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 299
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 300
    .local v5, "maxWidth":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_135

    .line 301
    invoke-virtual {p0, v5}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 303
    :cond_135
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 304
    .local v7, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_143

    .line 305
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 307
    :cond_143
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 308
    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_14f

    .line 309
    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 311
    :cond_14f
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 312
    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_15b

    .line 313
    invoke-virtual {p0, v4}, Landroid/widget/SearchView;->setInputType(I)V

    .line 316
    :cond_15b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    const/4 v1, 0x1

    .line 320
    .local v1, "focusable":Z
    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 321
    const/16 v8, 0x12

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 326
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 327
    iget-object v8, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    iget-object v8, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v10, "web_search"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 332
    iget-object v8, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 335
    iget-object v8, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v8, :cond_1b7

    .line 336
    iget-object v8, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v9, Landroid/widget/SearchView$5;

    invoke-direct {v9, p0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 345
    :cond_1b7
    iget-boolean v8, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v8}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 346
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 347
    const/high16 v8, 0x40000

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 348
    return-void

    .line 260
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "focusable":Z
    .end local v2    # "imeOptions":I
    .end local v4    # "inputType":I
    .end local v5    # "maxWidth":I
    .end local v7    # "queryHint":Ljava/lang/CharSequence;
    :cond_1c5
    const v8, 0x10900ba

    const/4 v9, 0x1

    invoke-virtual {v3, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_6c
.end method

.method static synthetic access$000(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/SearchView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/SearchView;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SearchView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/SearchView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1357
    iget-object v10, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-le v10, v12, :cond_8b

    .line 1358
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1359
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1360
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1361
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    .line 1362
    .local v3, "isLayoutRtl":Z
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 1363
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101046e

    invoke-virtual {v10, v11, v6, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1364
    iget-boolean v10, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v10, :cond_8c

    const v10, 0x105004d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x105004b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v2, v10, v11

    .line 1368
    .local v2, "iconOffset":I
    :goto_48
    iget-object v10, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1370
    if-eqz v3, :cond_8e

    .line 1371
    iget v10, v1, Landroid/graphics/Rect;->left:I

    neg-int v5, v10

    .line 1375
    .local v5, "offset":I
    :goto_56
    iget-object v10, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v10, v5}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 1376
    iget-object v10, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    sub-int v8, v10, v0

    .line 1378
    .local v8, "width":I
    iget v10, v6, Landroid/util/TypedValue;->data:I

    if-eqz v10, :cond_94

    .line 1379
    iget-object v10, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1380
    .local v4, "newWidth":I
    iget-object v10, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v10, v9}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 1381
    iget-object v9, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v9, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 1385
    .end local v4    # "newWidth":I
    :goto_7e
    iget-object v9, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 1386
    iget-object v9, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->showDropDownAfterLayout()V

    .line 1388
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v5    # "offset":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "width":I
    :cond_8b
    return-void

    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_8c
    move v2, v9

    .line 1364
    goto :goto_48

    .line 1373
    .restart local v2    # "iconOffset":I
    :cond_8e
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    sub-int v5, v0, v10

    .restart local v5    # "offset":I
    goto :goto_56

    .line 1383
    .restart local v8    # "width":I
    :cond_94
    iget-object v9, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v9, v8}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_7e
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1549
    if-eqz p2, :cond_f

    .line 1550
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1552
    :cond_f
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1553
    if-eqz p4, :cond_1f

    .line 1554
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    :cond_1f
    if-eqz p3, :cond_26

    .line 1557
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    :cond_26
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_31

    .line 1560
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1562
    :cond_31
    if-eqz p5, :cond_3d

    .line 1563
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    :cond_3d
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1567
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 16
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1662
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1665
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1667
    :cond_f
    if-nez v1, :cond_13

    .line 1668
    const-string v1, "android.intent.action.SEARCH"

    .line 1672
    :cond_13
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1673
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_22

    .line 1674
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1677
    :cond_22
    if-eqz v7, :cond_48

    .line 1678
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1679
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_48

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1683
    .end local v10    # "id":Ljava/lang/String;
    :cond_48
    if-nez v7, :cond_61

    const/4 v2, 0x0

    .line 1685
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_4b
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1686
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1688
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1698
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_60
    return-object v0

    .line 1683
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_61
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_64} :catch_66

    move-result-object v2

    goto :goto_4b

    .line 1689
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_66
    move-exception v8

    .line 1692
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_67
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6a} :catch_8b

    move-result v11

    .line 1696
    .local v11, "rowNum":I
    :goto_6b
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1698
    const/4 v0, 0x0

    goto :goto_60

    .line 1693
    .end local v11    # "rowNum":I
    :catch_8b
    move-exception v9

    .line 1694
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_6b
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 16
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1589
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1594
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1596
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1603
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1604
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_29

    .line 1605
    const-string v10, "app_data"

    iget-object v11, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1611
    :cond_29
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1614
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1615
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1616
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1617
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1619
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1620
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_45

    .line 1621
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1623
    :cond_45
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_53

    .line 1624
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1626
    :cond_53
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_61

    .line 1627
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1629
    :cond_61
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_6b

    .line 1630
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1632
    :cond_6b
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1636
    const-string v11, "calling_package"

    if-nez v8, :cond_92

    const/4 v10, 0x0

    :goto_84
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1641
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1643
    return-object v9

    .line 1636
    :cond_92
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_84
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1574
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1575
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1576
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_12

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    return-object v1

    .line 1576
    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method private dismissSuggestions()V
    .registers 2

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1227
    return-void
.end method

.method private forceSuggestionQuery()V
    .registers 2

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->doBeforeTextChanged()V

    .line 1704
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->doAfterTextChanged()V

    .line 1705
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 1046
    const/4 v1, 0x0

    .line 1048
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1050
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    :cond_b
    if-nez v1, :cond_11

    .line 1056
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1058
    :cond_11
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 16
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1078
    iget-boolean v8, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v8, :cond_7

    .line 1107
    .end local p1    # "hintText":Ljava/lang/CharSequence;
    :goto_6
    return-object p1

    .line 1079
    .restart local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_7
    const/4 v6, 0x0

    .line 1081
    .local v6, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1082
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101046e

    invoke-virtual {v8, v9, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1083
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v5, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1084
    .local v5, "smallestScreenWidthDp":I
    iget v8, v3, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_7d

    .line 1085
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    const-string v8, "   "

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1090
    .restart local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    :goto_34
    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1091
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0}, Landroid/widget/SearchView;->getSearchIconId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1092
    .local v4, "searchIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff4000000000000L

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 1093
    .local v7, "textSize":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1094
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1095
    .local v1, "deviceDPI":I
    const/4 v0, 0x0

    .line 1096
    .local v0, "deltaPostion":I
    const/16 v8, 0x280

    if-lt v1, v8, :cond_85

    .line 1097
    const/16 v0, -0xf

    .line 1101
    :goto_67
    iget v8, v3, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_88

    .line 1102
    add-int v8, v7, v0

    invoke-virtual {v4, v12, v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1106
    :goto_70
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x2

    const/16 v10, 0x21

    invoke-virtual {v6, v8, v13, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v6

    .line 1107
    goto :goto_6

    .line 1088
    .end local v0    # "deltaPostion":I
    .end local v1    # "deviceDPI":I
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "searchIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "textSize":I
    :cond_7d
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    const-string v8, "   "

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    goto :goto_34

    .line 1099
    .restart local v0    # "deltaPostion":I
    .restart local v1    # "deviceDPI":I
    .restart local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "searchIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "textSize":I
    :cond_85
    const/16 v0, -0xa

    goto :goto_67

    .line 1104
    :cond_88
    invoke-virtual {v4, v12, v12, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_70
.end method

.method private getPreferredWidth()I
    .registers 3

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1062
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1063
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1065
    .local v1, "smallestScreenWidthDp":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046e

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1066
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_3b

    const/16 v2, 0x258

    if-lt v1, v2, :cond_3b

    .line 1067
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101045c

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1073
    :goto_38
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    return v2

    .line 1070
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101044a

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_38
.end method

.method private hasVoiceSearch()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 778
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 779
    const/4 v1, 0x0

    .line 780
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 781
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 785
    :cond_18
    :goto_18
    if-eqz v1, :cond_2b

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 788
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    .line 791
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_2b
    return v2

    .line 782
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2c
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 783
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_18
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1708
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1499
    if-nez p1, :cond_3

    .line 1509
    :goto_2
    return-void

    .line 1505
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 1506
    :catch_b
    move-exception v0

    .line 1507
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1521
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1522
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1523
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1524
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1482
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1483
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1485
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1488
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1490
    const/4 v2, 0x1

    .line 1492
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private onCloseClicked()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1230
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1231
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1232
    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_23

    .line 1234
    iget-object v3, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-interface {v3}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v3

    if-nez v3, :cond_23

    .line 1236
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1238
    invoke-direct {p0, v5}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1257
    :cond_23
    :goto_23
    return-void

    .line 1242
    :cond_24
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1246
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 1247
    .local v1, "mKeyboard":I
    if-eqz v1, :cond_47

    .line 1250
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_23

    .line 1252
    :cond_47
    invoke-direct {p0, v5}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_23
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .registers 6
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1391
    iget-object v1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1393
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1394
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1395
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    .line 1396
    const/4 v0, 0x1

    .line 1398
    :cond_18
    return v0
.end method

.method private onItemSelected(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1404
    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1405
    const/4 v0, 0x1

    .line 1407
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private onSearchClicked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1260
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1261
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1264
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 1265
    .local v1, "mKeyboard":I
    if-eqz v1, :cond_28

    .line 1268
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1273
    :goto_1e
    iget-object v2, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_27

    .line 1274
    iget-object v2, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1276
    :cond_27
    return-void

    .line 1270
    :cond_28
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_1e
.end method

.method private onSubmitQuery()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1212
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1213
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    .line 1214
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1216
    :cond_1f
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2e

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1220
    :cond_2e
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    .line 1223
    :cond_31
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 974
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_9

    .line 1031
    :cond_8
    :goto_8
    return v5

    .line 977
    :cond_9
    iget-object v7, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_8

    .line 980
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 983
    const/16 v7, 0x42

    if-eq p2, v7, :cond_25

    const/16 v7, 0x54

    if-eq p2, v7, :cond_25

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_31

    .line 985
    :cond_25
    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v3

    .line 986
    .local v3, "position":I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_8

    .line 991
    .end local v3    # "position":I
    :cond_31
    if-eq p2, v8, :cond_37

    const/16 v7, 0x16

    if-ne p2, v7, :cond_57

    .line 996
    :cond_37
    if-ne p2, v8, :cond_50

    move v4, v5

    .line 998
    .local v4, "selPoint":I
    :goto_3a
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 999
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 1000
    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1001
    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    move v5, v6

    .line 1003
    goto :goto_8

    .line 996
    .end local v4    # "selPoint":I
    :cond_50
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    goto :goto_3a

    .line 1007
    :cond_57
    const/16 v6, 0x13

    if-ne p2, v6, :cond_63

    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_8

    .line 1014
    :cond_63
    iget-object v6, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1015
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_77

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1019
    :cond_77
    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v3

    .line 1020
    .restart local v3    # "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 1021
    iget-object v6, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1022
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1023
    invoke-static {v2, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 1025
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_8
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1195
    iget-object v4, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1196
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    move v0, v2

    .line 1198
    .local v0, "hasText":Z
    :goto_11
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 1199
    if-nez v0, :cond_43

    :goto_16
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 1200
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 1201
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 1202
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1203
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1207
    :cond_34
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1209
    return-void

    .end local v0    # "hasText":Z
    :cond_41
    move v0, v3

    .line 1197
    goto :goto_11

    .restart local v0    # "hasText":Z
    :cond_43
    move v2, v3

    .line 1199
    goto :goto_16
.end method

.method private onVoiceClicked()V
    .registers 7

    .prologue
    .line 1280
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_5

    .line 1299
    :cond_4
    :goto_4
    return-void

    .line 1283
    :cond_5
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1285
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_7
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1286
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1288
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 1294
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_1b
    move-exception v1

    .line 1297
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1289
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1290
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1292
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_37} :catch_1b

    goto :goto_4
.end method

.method private postUpdateFocusedState()V
    .registers 2

    .prologue
    .line 834
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 835
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 1449
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1450
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1451
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 1469
    :goto_e
    return-void

    .line 1454
    :cond_f
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1456
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1457
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_21

    .line 1460
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1463
    :cond_21
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1467
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_25
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method

.method private setImeVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 852
    if-eqz p1, :cond_8

    .line 853
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 863
    :cond_7
    :goto_7
    return-void

    .line 855
    :cond_8
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 856
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 859
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1517
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1518
    return-void

    .line 1517
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_f
.end method

.method private updateCloseButton()V
    .registers 9

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 818
    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    move v0, v4

    .line 821
    .local v0, "hasText":Z
    :goto_11
    if-nez v0, :cond_1b

    iget-boolean v6, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_4a

    iget-boolean v6, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-nez v6, :cond_4a

    :cond_1b
    move v2, v4

    .line 822
    .local v2, "showClose":Z
    :goto_1c
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 824
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101046e

    invoke-virtual {v6, v7, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 825
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_4e

    .line 826
    iget-object v4, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4c

    :goto_37
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    :goto_3a
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v0, :cond_58

    sget-object v3, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_44
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 831
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "showClose":Z
    :cond_48
    move v0, v3

    .line 818
    goto :goto_11

    .restart local v0    # "hasText":Z
    :cond_4a
    move v2, v3

    .line 821
    goto :goto_1c

    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "showClose":Z
    :cond_4c
    move v3, v5

    .line 826
    goto :goto_37

    .line 828
    :cond_4e
    iget-object v4, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_56

    :goto_52
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3a

    :cond_56
    move v3, v5

    goto :goto_52

    .line 830
    :cond_58
    sget-object v3, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_44
.end method

.method private updateFocusedState()V
    .registers 4

    .prologue
    .line 838
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 839
    .local v0, "focused":Z
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_24

    sget-object v1, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_10
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 840
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_27

    sget-object v1, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1d
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 842
    return-void

    .line 839
    :cond_24
    sget-object v1, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_10

    .line 840
    :cond_27
    sget-object v1, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1d
.end method

.method private updateQueryHint()V
    .registers 5

    .prologue
    .line 1111
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    .line 1112
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_f
    :goto_f
    return-void

    .line 1113
    :cond_10
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_31

    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1116
    .local v1, "hintId":I
    if-eqz v1, :cond_25

    .line 1117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    :cond_25
    if-eqz v0, :cond_f

    .line 1120
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1123
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_31
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1131
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownAnimationStyle(I)V

    .line 1132
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1133
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1134
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1137
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_39

    .line 1140
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1141
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1142
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1149
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1152
    :cond_39
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1153
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_48

    .line 1154
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1158
    :cond_48
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1159
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1161
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1162
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_6f

    const/4 v2, 0x2

    :cond_6f
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1166
    :cond_72
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    .prologue
    .line 808
    const/16 v0, 0x8

    .line 809
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    .line 812
    :cond_18
    const/4 v0, 0x0

    .line 814
    :cond_19
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 815
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 4
    .param p1, "hasText"    # Z

    .prologue
    .line 799
    const/16 v0, 0x8

    .line 800
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_19

    .line 802
    :cond_18
    const/4 v0, 0x0

    .line 804
    :cond_19
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 805
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 9
    .param p1, "collapsed"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 762
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    .line 764
    if-eqz p1, :cond_3b

    move v1, v2

    .line 766
    .local v1, "visCollapsed":I
    :goto_9
    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    move v0, v4

    .line 768
    .local v0, "hasText":Z
    :goto_16
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 770
    iget-object v6, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_3f

    move v5, v3

    :goto_23
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_41

    :goto_2c
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 773
    if-nez v0, :cond_43

    :goto_34
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 774
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 775
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_3b
    move v1, v3

    .line 764
    goto :goto_9

    .restart local v1    # "visCollapsed":I
    :cond_3d
    move v0, v2

    .line 766
    goto :goto_16

    .restart local v0    # "hasText":Z
    :cond_3f
    move v5, v2

    .line 770
    goto :goto_23

    :cond_41
    move v3, v2

    .line 771
    goto :goto_2c

    :cond_43
    move v4, v2

    .line 773
    goto :goto_34
.end method

.method private updateVoiceButton(Z)V
    .registers 5
    .param p1, "empty"    # Z

    .prologue
    .line 1175
    const/16 v0, 0x8

    .line 1176
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 1177
    const/4 v0, 0x0

    .line 1178
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    :cond_16
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 452
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 453
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 454
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 455
    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 456
    return-void
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 557
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 558
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 567
    :cond_6
    :goto_6
    return-object v0

    .line 559
    :cond_7
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1d

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 562
    .local v1, "hintId":I
    if-eqz v1, :cond_6

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 567
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2

    .prologue
    .line 596
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .registers 2

    .prologue
    .line 624
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    .prologue
    .line 646
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1323
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1324
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1326
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1327
    iput-boolean v2, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1328
    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    .prologue
    .line 1335
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_5

    .line 1342
    :goto_4
    return-void

    .line 1337
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1338
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    .line 1339
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1340
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 847
    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 848
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 849
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1346
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1347
    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1348
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1352
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1353
    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1354
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 901
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_6

    .line 902
    const/4 v1, 0x0

    .line 914
    :goto_5
    return v1

    .line 907
    :cond_6
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 908
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 909
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v1, 0x1

    goto :goto_5

    .line 914
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 725
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 754
    :goto_9
    return-void

    .line 729
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 730
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 732
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_4a

    .line 752
    :cond_15
    :goto_15
    const/high16 v1, 0x40000000

    .line 753
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_9

    .line 735
    :sswitch_1f
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2a

    .line 736
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_15

    .line 738
    :cond_2a
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 740
    goto :goto_15

    .line 743
    :sswitch_33
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_15

    .line 744
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_15

    .line 749
    :sswitch_3e
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_45

    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    :goto_44
    goto :goto_15

    :cond_45
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_44

    .line 732
    :sswitch_data_4a
    .sparse-switch
        -0x80000000 -> :sswitch_1f
        0x0 -> :sswitch_3e
        0x40000000 -> :sswitch_33
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 870
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 871
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1443
    return-void
.end method

.method onTextFocusChanged()V
    .registers 2

    .prologue
    .line 1302
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1305
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1306
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1307
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    .line 1309
    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1313
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 1315
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1316
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-boolean v2, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 444
    :cond_6
    :goto_6
    return v0

    .line 435
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_6

    .line 437
    :cond_f
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_21

    .line 438
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 439
    .local v0, "result":Z
    if-eqz v0, :cond_6

    .line 440
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_6

    .line 444
    .end local v0    # "result":Z
    :cond_21
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_6
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 381
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 382
    return-void
.end method

.method public setIconified(Z)V
    .registers 2
    .param p1, "iconify"    # Z

    .prologue
    .line 610
    if-eqz p1, :cond_6

    .line 611
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    .line 615
    :goto_5
    return-void

    .line 613
    :cond_6
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    goto :goto_5
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3
    .param p1, "iconified"    # Z

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_5

    .line 587
    :goto_4
    return-void

    .line 584
    :cond_5
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    .line 585
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 586
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    goto :goto_4
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 394
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .prologue
    .line 416
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 417
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxpixels"    # I

    .prologue
    .line 705
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 708
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    .prologue
    .line 474
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 475
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 483
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 484
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 465
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 466
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 504
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 505
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    .prologue
    .line 492
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 493
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    if-eqz p1, :cond_14

    .line 527
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 528
    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 532
    :cond_14
    if-eqz p2, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 533
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    .line 535
    :cond_1f
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 547
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 548
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    .line 665
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_12

    .line 666
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    if-eqz p1, :cond_13

    const/4 v1, 0x2

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 669
    :cond_12
    return-void

    .line 666
    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 4
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 359
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 360
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_c

    .line 361
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    .line 362
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 365
    :cond_c
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 367
    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1e

    .line 370
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 372
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 373
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 636
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 637
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 638
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 686
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 688
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 689
    return-void
.end method
