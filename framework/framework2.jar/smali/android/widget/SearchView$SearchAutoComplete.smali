.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1738
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1739
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1740
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1743
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1744
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1745
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1748
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1749
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1750
    return-void
.end method

.method static synthetic access$1500(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView$SearchAutoComplete;

    .prologue
    .line 1732
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    .prologue
    .line 1835
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_a

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1825
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1826
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 1827
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1840
    const/4 v2, 0x4

    if-ne p1, v2, :cond_37

    .line 1843
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1844
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1845
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_19

    .line 1846
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1864
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_19
    :goto_19
    return v1

    .line 1849
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 1850
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1851
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_29

    .line 1852
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1854
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1859
    const/4 v1, 0x0

    goto :goto_19

    .line 1864
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_19
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1793
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1796
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1797
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 1798
    .local v2, "mKeyboard":I
    if-eqz v2, :cond_17

    .line 1821
    :cond_16
    :goto_16
    return-void

    .line 1804
    :cond_17
    if-eqz p1, :cond_16

    iget-object v4, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_16

    .line 1805
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1807
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1810
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1812
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1813
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101046e

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1814
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5c

    .line 1815
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->twEnsureImeVisibleWithoutShowDropDown(Z)V

    goto :goto_16

    .line 1817
    :cond_5c
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    goto :goto_16
.end method

.method public performCompletion()V
    .registers 1

    .prologue
    .line 1785
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1775
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 1753
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    .line 1754
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .prologue
    .line 1758
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1759
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1760
    return-void
.end method
