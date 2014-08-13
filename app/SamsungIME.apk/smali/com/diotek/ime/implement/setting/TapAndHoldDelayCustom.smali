.class public Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;
.super Landroid/app/Activity;
.source "TapAndHoldDelayCustom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBtn:Landroid/widget/Button;

.field private mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

.field private mcancelBtn:Landroid/widget/Button;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Lcom/diotek/ime/implement/setting/TapAndHoldView;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    .line 142
    invoke-static {p1}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    .line 143
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "settings_hold_delay_custom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v1, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v2, "settings_hold_delay_custom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/TapAndHoldView;->getTouchTime()J

    move-result-wide v1

    long-to-int v0, v1

    .line 136
    .local v0, "longTouchTime":I
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->updateLongPressTimeOut(I)V

    .line 138
    .end local v0    # "longTouchTime":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-virtual {v5}, Lcom/diotek/ime/implement/setting/TapAndHoldView;->refresh()V

    .line 111
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 112
    .local v3, "middle":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 113
    .local v4, "sideWeight":I
    const v5, 0x7f0800c9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "childmiddle":Landroid/view/View;
    const v5, 0x7f0800aa

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "childleft":Landroid/view/View;
    const v5, 0x7f0800ab

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "childright":Landroid/view/View;
    :try_start_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020a4b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f0300a3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    .line 64
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    const v3, 0x7f0d02ed

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 70
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    .line 72
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    .line 73
    .local v0, "mRepository":Lcom/diotek/ime/framework/repository/Repository;
    if-eqz v0, :cond_1

    .line 74
    const-string v2, "TABLET_MODE"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 75
    .local v1, "misTablet":Z
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 81
    .end local v0    # "mRepository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v1    # "misTablet":Z
    :cond_1
    const v2, 0x7f0800cb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/TapAndHoldView;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    .line 82
    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mcancelBtn:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mcancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f0800ce

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    .line 85
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    return-void
.end method
