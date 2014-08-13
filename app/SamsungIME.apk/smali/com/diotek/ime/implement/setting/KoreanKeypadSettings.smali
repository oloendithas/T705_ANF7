.class public Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;
.super Landroid/app/ListActivity;
.source "KoreanKeypadSettings.java"


# instance fields
.field private final OPTION_MENU_BACK:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mKeypadValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    .line 36
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->OPTION_MENU_BACK:I

    return-void
.end method

.method private initList(Landroid/content/res/Resources;)Z
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 80
    const v1, 0x7f070021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "modes":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const v2, 0x7f070022

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    .line 83
    array-length v1, v0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 84
    :cond_0
    const-string v1, "SamsungIME"

    const-string v2, "KoreanKeypadSetting - initList : Keypad list create failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 46
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v4, 0x7f03005b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    const v4, 0x7f0d0021

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 58
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    .line 60
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->initList(Landroid/content/res/Resources;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 68
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->sharedPref:Landroid/content/SharedPreferences;

    .line 69
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->sharedPref:Landroid/content/SharedPreferences;

    const-string v5, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "chiceString":Ljava/lang/String;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "chiceString":Ljava/lang/String;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "SamsungIME"

    const-string v5, "KoreanKeypadSetting - onCreate() : not found exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 93
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 96
    const-string v2, "SamsungIME"

    const-string v3, "KoreanKeypadSetting - initList : Keypad list create failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 p3, 0x0

    .line 99
    :cond_0
    const-string v3, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;->mKeypadValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 118
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
