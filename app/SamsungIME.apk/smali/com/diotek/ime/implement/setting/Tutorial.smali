.class public Lcom/diotek/ime/implement/setting/Tutorial;
.super Landroid/app/Activity;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final PACKAGE_NAME:Ljava/lang/String;

.field private final XT9_9:Ljava/lang/String;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mTutorialEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "com.sec.android.inputmethod"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->PACKAGE_NAME:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 45
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 46
    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->XT9_9:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Tutorial;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Tutorial;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected initViews()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 63
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 64
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 65
    const-string v11, "com.sec.android.inputmethod_preferences"

    invoke-virtual {p0, v11, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 66
    .local v9, "sPrefs":Landroid/content/SharedPreferences;
    const-string v11, "da_mode"

    invoke-interface {v9, v11, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 67
    .local v2, "daMode":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 69
    .local v0, "bCscEnableLanguageChangeBtn":Z
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "TABLET_MODE"

    invoke-interface {v11, v12, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 70
    .local v7, "isTabletMode":Z
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v6

    .line 71
    .local v6, "isMultiwindowPhone":Z
    const/4 v8, 0x0

    .line 74
    .local v8, "ocrInstalled":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocr"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 91
    :goto_0
    if-eqz v2, :cond_9

    .line 92
    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 93
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_4

    .line 94
    const v11, 0x7f030078

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    .line 159
    :goto_1
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 161
    :cond_0
    const v11, 0x7f0800af

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "changeKBTypeLayout":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 163
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .end local v1    # "changeKBTypeLayout":Landroid/view/View;
    :cond_1
    const v11, 0x7f08006e

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    .line 168
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setLongClickable(Z)V

    .line 169
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v12, Lcom/diotek/ime/implement/setting/Tutorial$1;

    invoke-direct {v12, p0}, Lcom/diotek/ime/implement/setting/Tutorial$1;-><init>(Lcom/diotek/ime/implement/setting/Tutorial;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v12, Lcom/diotek/ime/implement/setting/Tutorial$2;

    invoke-direct {v12, p0}, Lcom/diotek/ime/implement/setting/Tutorial$2;-><init>(Lcom/diotek/ime/implement/setting/Tutorial;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    const v11, 0x7f0800ae

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 211
    .local v10, "tutorialClose":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 212
    if-eqz v7, :cond_2

    .line 213
    const v11, 0x7f0d00e8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    return-void

    .line 75
    .end local v10    # "tutorialClose":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocrlite"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v4

    .line 80
    .local v4, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocr3"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    goto/16 :goto_0

    .line 81
    :catch_2
    move-exception v5

    .line 82
    .local v5, "e3":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 83
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OCR apk does not exist. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 85
    :cond_3
    const-string v11, "SamsungIME"

    const-string v12, "OCR apk does not exist."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "e3":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const v11, 0x7f03007a

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 99
    :cond_5
    if-eqz v8, :cond_7

    .line 100
    if-eqz v6, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_6

    .line 101
    const v11, 0x7f030077

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 103
    :cond_6
    const v11, 0x7f030076

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 106
    :cond_7
    if-eqz v6, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_8

    .line 107
    const v11, 0x7f030079

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 109
    :cond_8
    const v11, 0x7f03007b

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 113
    :cond_9
    if-nez v0, :cond_f

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "KOR_MODE"

    invoke-interface {v11, v12, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_f

    if-nez v7, :cond_f

    .line 114
    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 115
    if-eqz v6, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_a

    .line 116
    const v11, 0x7f03007e

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 118
    :cond_a
    const v11, 0x7f030083

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 121
    :cond_b
    if-eqz v8, :cond_d

    .line 122
    if-eqz v6, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_c

    .line 123
    const v11, 0x7f03007f

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 125
    :cond_c
    const v11, 0x7f030084

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 128
    :cond_d
    if-eqz v6, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_e

    .line 129
    const v11, 0x7f030080

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 131
    :cond_e
    const v11, 0x7f030085

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 136
    :cond_f
    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 137
    if-eqz v6, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_10

    .line 138
    const v11, 0x7f03007d

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 140
    :cond_10
    const v11, 0x7f030082

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 143
    :cond_11
    if-eqz v8, :cond_13

    .line 144
    if-eqz v6, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_12

    .line 145
    const v11, 0x7f03007c

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 147
    :cond_12
    const v11, 0x7f030075

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 150
    :cond_13
    if-eqz v6, :cond_14

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_14

    .line 151
    const v11, 0x7f030081

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 153
    :cond_14
    const v11, 0x7f030086

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/Tutorial;->initViews()V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
