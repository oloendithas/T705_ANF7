.class public Lcom/diotek/ime/implement/setting/PhraseSettings;
.super Landroid/app/Activity;
.source "PhraseSettings.java"


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private isChecked:Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mSPref:Landroid/content/SharedPreferences;

.field private onShortCutPhraseSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private phraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->isChecked:Z

    .line 206
    new-instance v0, Lcom/diotek/ime/implement/setting/PhraseSettings$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/PhraseSettings$2;-><init>(Lcom/diotek/ime/implement/setting/PhraseSettings;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->onShortCutPhraseSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/PhraseSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/PhraseSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/PhraseSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/PhraseSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setPhraseListItem()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 89
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 91
    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "phraseCategory":Landroid/widget/TextView;
    const v5, 0x7f08002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 95
    .local v3, "phraseEditText":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->getPhraseCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->getPhraseEditText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 100
    new-instance v5, Lcom/diotek/ime/implement/setting/PhraseSettings$1;

    invoke-direct {v5, p0}, Lcom/diotek/ime/implement/setting/PhraseSettings$1;-><init>(Lcom/diotek/ime/implement/setting/PhraseSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "phraseCategory":Landroid/widget/TextView;
    .end local v3    # "phraseEditText":Landroid/widget/EditText;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 173
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 178
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xa

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v5, 0x7f030074

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 51
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v5, :cond_0

    .line 52
    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 55
    :cond_0
    const v5, 0x7f0800ad

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    .line 59
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 60
    move v0, v2

    .line 61
    .local v0, "category":I
    if-ne v2, v7, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_1
    new-instance v4, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v4, "temp":Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "category":I
    .end local v4    # "temp":Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 72
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    .line 75
    const/4 v2, 0x1

    :goto_1
    if-gt v2, v7, :cond_3

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phrase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "phraseKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "editString":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    invoke-virtual {v5, v1}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseEditText(Ljava/lang/String;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "editString":Ljava/lang/String;
    .end local v3    # "phraseKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/PhraseSettings;->setActionBar()V

    .line 84
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/PhraseSettings;->setPhraseListItem()V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 185
    const/4 v1, 0x1

    .line 187
    .end local v0    # "currentView":Landroid/view/View;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 145
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/setting/PhraseSettings;->stateSetScrollView(Z)V

    .line 146
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    .line 148
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-gt v2, v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->getPhraseEditText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "editString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phrase"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "phraseKey":Ljava/lang/String;
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "editString":Ljava/lang/String;
    .end local v3    # "phraseKey":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/PhraseSettings;->setActionBar()V

    .line 164
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->isChecked:Z

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/PhraseSettings;->stateSetScrollView(Z)V

    .line 165
    return-void
.end method

.method public setActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 124
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;

    const-string v3, "SETTINGS_SHORTCUT_PHRASE"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->isChecked:Z

    .line 126
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 127
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 128
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090655

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 130
    .local v1, "rightPadding":I
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 131
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->isChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 134
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 139
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->onShortCutPhraseSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    .end local v1    # "rightPadding":I
    :cond_0
    return-void
.end method

.method public stateSetScrollView(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 191
    if-eqz p1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x60000

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 195
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/PhraseSettings;->mContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    move v1, v2

    .line 195
    goto :goto_1
.end method
