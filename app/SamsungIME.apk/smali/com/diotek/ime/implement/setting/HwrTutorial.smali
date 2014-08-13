.class public Lcom/diotek/ime/implement/setting/HwrTutorial;
.super Landroid/app/Activity;
.source "HwrTutorial.java"


# static fields
.field private static final HWR_LANG_CURSIVE:I = 0x0

.field private static final HWR_LANG_NON_CURSIVE:I = 0x1

.field private static final HWR_LANG_NOT_SUPPORTED:I = 0x2


# instance fields
.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method private getHwrLanguageType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_0

    .line 194
    const/4 v0, 0x2

    .line 197
    :goto_0
    return v0

    .line 171
    :sswitch_0
    const/4 v0, 0x1

    .line 172
    goto :goto_0

    .line 190
    :sswitch_1
    const/4 v0, 0x0

    .line 191
    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x62670000 -> :sswitch_0
        0x63730000 -> :sswitch_0
        0x64610000 -> :sswitch_1
        0x64650000 -> :sswitch_1
        0x656c0000 -> :sswitch_0
        0x656e4742 -> :sswitch_1
        0x656e5553 -> :sswitch_1
        0x65730000 -> :sswitch_1
        0x65734553 -> :sswitch_1
        0x65735553 -> :sswitch_1
        0x66610000 -> :sswitch_0
        0x66690000 -> :sswitch_0
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x68720000 -> :sswitch_0
        0x68750000 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x69770000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_0
        0x6c740000 -> :sswitch_0
        0x6c760000 -> :sswitch_0
        0x6e620000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_1
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_1
        0x70744252 -> :sswitch_1
        0x70745054 -> :sswitch_1
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_0
        0x736b0000 -> :sswitch_1
        0x736c0000 -> :sswitch_0
        0x73760000 -> :sswitch_0
        0x74680000 -> :sswitch_0
        0x74720000 -> :sswitch_0
        0x756b0000 -> :sswitch_0
        0x75720000 -> :sswitch_0
        0x76690000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v13

    iput-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 32
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0068

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    const v13, 0x7f030059

    invoke-virtual {p0, v13}, Landroid/app/Activity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 37
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    .local v4, "isKoreanSupported":Z
    const v13, 0x7f080079

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 42
    .local v11, "tv":Landroid/widget/TextView;
    if-eqz v11, :cond_7

    .line 43
    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 44
    const-string v13, "\u055d "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    iget-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    .line 49
    .local v5, "languages":[Lcom/diotek/ime/framework/common/Language;
    if-eqz v5, :cond_7

    .line 50
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    array-length v13, v5

    if-ge v3, v13, :cond_5

    .line 51
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/diotek/ime/implement/setting/HwrTutorial;->getHwrLanguageType(I)I

    move-result v12

    .line 53
    .local v12, "type":I
    const-string v13, "ko"

    aget-object v14, v5, v3

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 55
    const/4 v4, 0x1

    .line 57
    :cond_1
    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 50
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    .end local v3    # "index":I
    .end local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    .end local v12    # "type":I
    :cond_2
    const-string v13, ": "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    .restart local v3    # "index":I
    .restart local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    .restart local v12    # "type":I
    :cond_3
    if-eqz v3, :cond_4

    .line 61
    const-string v13, ", "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 63
    :cond_4
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 66
    .end local v12    # "type":I
    :cond_5
    if-nez v4, :cond_7

    .line 68
    const v13, 0x7f080083

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 69
    .local v8, "tutorialExSec":Landroid/widget/TextView;
    if-eqz v8, :cond_7

    .line 70
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v13, 0x7f0800a2

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 73
    .local v10, "tutorial_o":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_6

    .line 74
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_6
    const v13, 0x7f080084

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 78
    .local v9, "tutorial_bg":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_7

    .line 79
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .end local v3    # "index":I
    .end local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    .end local v8    # "tutorialExSec":Landroid/widget/TextView;
    .end local v9    # "tutorial_bg":Landroid/widget/LinearLayout;
    .end local v10    # "tutorial_o":Landroid/widget/LinearLayout;
    :cond_7
    iget-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    .line 88
    .restart local v5    # "languages":[Lcom/diotek/ime/framework/common/Language;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "cursiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, "nonCursiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_a

    .line 92
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_3
    array-length v13, v5

    if-ge v3, v13, :cond_a

    .line 93
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/diotek/ime/implement/setting/HwrTutorial;->getHwrLanguageType(I)I

    move-result v12

    .line 94
    .restart local v12    # "type":I
    if-nez v12, :cond_9

    .line 95
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 96
    :cond_9
    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 97
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 102
    .end local v3    # "index":I
    .end local v12    # "type":I
    :cond_a
    const v13, 0x7f080080

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "cursiveTv":Landroid/widget/TextView;
    if-eqz v2, :cond_d

    .line 107
    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 108
    const-string v13, "\u055d "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 112
    :goto_5
    if-eqz v5, :cond_d

    .line 113
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_d

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v3, v13, :cond_b

    .line 116
    const-string v13, ", "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 113
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 110
    .end local v3    # "index":I
    :cond_c
    const-string v13, ": "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 122
    :cond_d
    const v13, 0x7f080081

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "nonCursiveTv":Landroid/widget/TextView;
    if-eqz v7, :cond_10

    .line 124
    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 125
    const-string v13, "\u055d "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 129
    :goto_7
    if-eqz v5, :cond_10

    .line 130
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_10

    .line 131
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v3, v13, :cond_e

    .line 133
    const-string v13, ", "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 130
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 127
    .end local v3    # "index":I
    :cond_f
    const-string v13, ": "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 140
    :cond_10
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 204
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
