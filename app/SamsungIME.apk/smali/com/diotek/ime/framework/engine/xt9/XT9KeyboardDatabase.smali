.class public Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
.super Ljava/lang/Object;
.source "XT9KeyboardDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;
    }
.end annotation


# instance fields
.field public final height:I

.field public final id:I

.field public final isSecondPage:Z

.field public final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;",
            ">;"
        }
    .end annotation
.end field

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mPhonepadHorizontalGap:I

.field private mPhonepadVerticalGap:I

.field public final page:I

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 64
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 66
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadVerticalGap:I

    .line 67
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadHorizontalGap:I

    .line 71
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->id:I

    .line 73
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->page:I

    .line 75
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->width:I

    .line 77
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->height:I

    .line 78
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor <init>(IILcom/diotek/ime/framework/view/Keyboard;Z)V
    .locals 2
    .param p1, "keyboardId"    # I
    .param p2, "keyboardPage"    # I
    .param p3, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p4, "secondPage"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 64
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 66
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadVerticalGap:I

    .line 67
    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadHorizontalGap:I

    .line 83
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 85
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadVerticalGap:I

    .line 88
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mPhonepadHorizontalGap:I

    .line 90
    iput p1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->id:I

    .line 92
    iput p2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->page:I

    .line 94
    invoke-virtual {p3}, Lcom/diotek/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->width:I

    .line 96
    invoke-virtual {p3}, Lcom/diotek/ime/framework/view/Keyboard;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->height:I

    .line 97
    iput-boolean p4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    .line 98
    invoke-virtual {p0, p3}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->makeKeys(Lcom/diotek/ime/framework/view/Keyboard;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    .line 99
    return-void
.end method

.method private isEnableShfit()Z
    .locals 3

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, "result":Z
    const-string v0, ""

    .line 199
    .local v0, "languageCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 207
    :cond_0
    return v1
.end method


# virtual methods
.method makeKeys(Lcom/diotek/ime/framework/view/Keyboard;)Ljava/util/List;
    .locals 39
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/diotek/ime/framework/view/Keyboard;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v38, "xt9Keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v33

    .line 106
    .local v33, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v30

    .line 108
    .local v30, "inputMethod":I
    invoke-static {}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getInstance()Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    move-result-object v37

    .line 110
    .local v37, "umlautManager":Lcom/diotek/ime/framework/input/umlaut/UmlautManager;
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v35

    .line 112
    .local v35, "secondaryKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->isEnableShfit()Z

    move-result v10

    .line 113
    .local v10, "isEnableShift":Z
    const/16 v18, 0x0

    .line 115
    .local v18, "umlaut":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/16 v31, 0x1

    .line 117
    .local v31, "isPhonepadInputMethod":Z
    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 118
    .local v32, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getCurrentKeyUmlautString(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 120
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    if-gez v2, :cond_2

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, -0xff

    if-eq v2, v4, :cond_2

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, -0x101

    if-ne v2, v4, :cond_5

    :cond_2
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x40

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    :cond_3
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    :cond_4
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_7

    .line 132
    :cond_5
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v3, v4, v5

    const/4 v4, 0x4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 115
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v31    # "isPhonepadInputMethod":Z
    .end local v32    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_6
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 137
    .restart local v28    # "i$":Ljava/util/Iterator;
    .restart local v31    # "isPhonepadInputMethod":Z
    .restart local v32    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_7
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v2, v4

    .line 138
    .local v3, "code":I
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v34

    .line 139
    .local v34, "secondCode":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    if-eqz v2, :cond_9

    const/16 v2, -0xff

    move/from16 v0, v34

    if-eq v0, v2, :cond_9

    .line 140
    const/16 v29, -0x1

    .line 141
    .local v29, "index":I
    move/from16 v0, v34

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v36

    .line 142
    .local v36, "temp":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 143
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_8

    .line 144
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_8
    move/from16 v3, v34

    .line 150
    .end local v29    # "index":I
    .end local v36    # "temp":Ljava/lang/String;
    :cond_9
    int-to-char v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_c

    if-lez v3, :cond_c

    .line 152
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    :cond_a
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .end local v3    # "code":I
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>([IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 155
    .restart local v3    # "code":I
    :cond_b
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x1

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 158
    :cond_c
    int-to-char v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_f

    if-lez v3, :cond_f

    .line 159
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 160
    :cond_d
    new-instance v11, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v32

    iget-object v12, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x1

    move-object/from16 v0, v32

    iget v14, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v15, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v16, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>([IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    :cond_e
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 166
    :cond_f
    if-eqz v31, :cond_10

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    .line 167
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x2

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    :cond_10
    if-eqz v31, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x2a

    if-eq v3, v2, :cond_11

    const/16 v2, 0x23

    if-eq v3, v2, :cond_11

    const/16 v2, 0x2f

    if-eq v3, v2, :cond_11

    const/16 v2, 0x28

    if-eq v3, v2, :cond_11

    const/16 v2, 0x29

    if-ne v3, v2, :cond_12

    .line 171
    :cond_11
    new-instance v19, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v20, v2, v4

    const/16 v21, 0x4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v23, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v24, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v27, v10

    invoke-direct/range {v19 .. v27}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 175
    :cond_12
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, "StrEmpty"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, -0x1

    move-object/from16 v0, v32

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v32

    iget v8, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    .end local v3    # "code":I
    .end local v32    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v34    # "secondCode":I
    :cond_13
    return-object v38
.end method
