.class public abstract Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;


# instance fields
.field private final PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

.field private final PREF_LASTEST_EMOTICONS:Ljava/lang/String;

.field protected inputMethod:I

.field private mCurrentCategory:I

.field private mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsTabletMode:Z

.field private mLastestEmoticon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLastestEmoticonCount:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    .line 24
    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 26
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 27
    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    .line 28
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    .line 29
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    .line 32
    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    .line 33
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    .line 24
    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 26
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 27
    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    .line 28
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    .line 29
    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    .line 32
    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    .line 33
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private initLastestEmoticonList()V
    .locals 7

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoticons"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "LastestEmoticonList"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "lastestEmoticonList":Ljava/lang/String;
    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v4, "\\]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 68
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " "

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 72
    iget-object v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "token":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 48
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    .line 49
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    .line 50
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListLayoutHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLastestEmoticonCount()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    .line 58
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initLastestEmoticonList()V

    .line 59
    return-void
.end method

.method private lastestEmoticonToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateLatestEmoticon(Ljava/lang/String;)V
    .locals 6
    .param p1, "emoticon"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "emoticons"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 82
    .local v1, "index":I
    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    :cond_1
    :goto_1
    const-string v3, "LastestEmoticonList"

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->lastestEmoticonToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    if-le v3, v4, :cond_1

    .line 91
    iget-object v3, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    iget v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method protected abstract getEmoticonCountInRow()I
.end method

.method protected abstract getEmoticonFontSize()F
.end method

.method protected abstract getEmoticonHeight()I
.end method

.method protected abstract getEmoticonLineResourceId()I
.end method

.method protected abstract getEmoticonTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getEmoticonWidth()I
.end method

.method protected abstract getItemBackgroundResId()I
.end method

.method public abstract getItemMarginBottom()I
.end method

.method public abstract getItemMarginLeft()I
.end method

.method public abstract getItemMarginRight()I
.end method

.method public abstract getItemMarginTop()I
.end method

.method public abstract getItemPaddingBottom()I
.end method

.method public abstract getItemPaddingLeft()I
.end method

.method public abstract getItemPaddingRight()I
.end method

.method public abstract getItemPaddingTop()I
.end method

.method protected abstract getLastestEmoticonCount()I
.end method

.method public getLatestEmoticonSize()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getListLayoutHeight()I
.end method

.method public onEmoticonClickListener(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "emoticon"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->updateLatestEmoticon(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, -0x73

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    .line 145
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 10
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "emoticons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .line 103
    iget v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    if-ne v5, p2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6, v6}, Landroid/view/View;->scrollTo(II)V

    .line 107
    if-nez p2, :cond_2

    .line 108
    iget-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    .line 110
    :cond_2
    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "emoticonAdapaterList":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    const/4 v1, 0x0

    .line 113
    .local v1, "emoticonRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonCountInRow()I

    move-result v3

    .line 114
    .local v3, "itemCountInRow":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 115
    rem-int v5, v2, v3

    if-nez v5, :cond_4

    .line 116
    if-eqz v1, :cond_3

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "emoticonRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v1    # "emoticonRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_5
    if-eqz v1, :cond_6

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    new-instance v5, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonLineResourceId()I

    move-result v7

    invoke-direct {v5, v6, v7, v0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    .line 127
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v5, p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonAdapterListener(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V

    .line 128
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonFontSize()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setFontSize(F)V

    .line 130
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonWidth(I)V

    .line 131
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonHeight(I)V

    .line 132
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemPadding(IIII)V

    .line 133
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemMargin(IIII)V

    .line 134
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemBackgroundResId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemBackgroundResId(I)V

    .line 135
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    goto/16 :goto_0
.end method
