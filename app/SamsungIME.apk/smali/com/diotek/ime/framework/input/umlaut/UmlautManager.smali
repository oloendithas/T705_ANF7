.class public Lcom/diotek/ime/framework/input/umlaut/UmlautManager;
.super Ljava/lang/Object;
.source "UmlautManager.java"


# static fields
.field public static final INVALID_VALUE:Ljava/lang/String; = ""

.field private static sInstance:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;


# instance fields
.field private mCurrentUmlautMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUmlautMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    .line 29
    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/input/umlaut/UmlautManager;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentKeyUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;
    .locals 14
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    .prologue
    .line 137
    const/4 v8, 0x0

    .line 138
    .local v8, "sbUmlautString":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 139
    .local v10, "shiftState":Z
    const/4 v0, 0x0

    .line 140
    .local v0, "capsState":Z
    const/4 v7, 0x0

    .line 141
    .local v7, "repo":Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    .line 142
    .local v3, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    const/high16 v5, 0x656e0000

    .line 143
    .local v5, "languageId":I
    const/4 v11, 0x0

    .line 144
    .local v11, "turkishKeyboardType":I
    const/4 v9, 0x0

    .line 146
    .local v9, "sbUsedUmlaut":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v12

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v10

    .line 148
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v12

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    .line 149
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    .line 150
    if-eqz v7, :cond_0

    .line 151
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v7, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 152
    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v7, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    .line 157
    :cond_0
    iget-object v12, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v12, :cond_4

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "sbUmlautString":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .restart local v8    # "sbUmlautString":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "sbUsedUmlaut":Ljava/lang/StringBuilder;
    iget-object v12, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v9    # "sbUsedUmlaut":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 166
    .local v4, "isTurkishConverting":Z
    const/high16 v12, 0x74720000

    if-ne v5, v12, :cond_5

    .line 167
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 168
    :cond_1
    const/4 v4, 0x1

    .line 174
    :cond_2
    :goto_1
    if-nez v4, :cond_6

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 175
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_2
    if-lt v1, v6, :cond_6

    .line 176
    const/4 v12, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 160
    .end local v1    # "i":I
    .end local v4    # "isTurkishConverting":Z
    .end local v6    # "n":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "sbUmlautString":Ljava/lang/StringBuilder;
    iget-object v12, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v8    # "sbUmlautString":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 170
    .restart local v4    # "isTurkishConverting":Z
    :cond_5
    const/high16 v12, 0x617a0000

    if-ne v5, v12, :cond_2

    .line 171
    const/4 v4, 0x1

    goto :goto_1

    .line 180
    :cond_6
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_d

    .line 181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .restart local v1    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "n":I
    :goto_3
    if-lt v1, v6, :cond_d

    .line 182
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 183
    .local v2, "index":I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_7

    .line 184
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 187
    :cond_7
    if-nez v4, :cond_a

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v13, 0x131

    if-ne v12, v13, :cond_a

    if-nez v10, :cond_8

    if-eqz v0, :cond_a

    .line 189
    :cond_8
    const/4 v12, 0x0

    const/16 v13, 0x130

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 181
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 193
    :cond_a
    const/high16 v12, 0x656c0000

    if-ne v5, v12, :cond_c

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v13, 0x390

    if-eq v12, v13, :cond_b

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v13, 0x3b0

    if-ne v12, v13, :cond_c

    :cond_b
    if-nez v10, :cond_9

    if-nez v0, :cond_9

    .line 198
    :cond_c
    const/4 v12, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 203
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v6    # "n":I
    :cond_d
    return-object v8
.end method

.method public getCurrentKeyUmlautString(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/StringBuilder;
    .locals 16
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 207
    const/4 v10, 0x0

    .line 208
    .local v10, "sUmlautString":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 209
    .local v11, "shiftState":Z
    const/4 v1, 0x0

    .line 210
    .local v1, "capsState":Z
    const/4 v9, 0x0

    .line 211
    .local v9, "repo":Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    .line 212
    .local v4, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    const/high16 v7, 0x656e0000

    .line 213
    .local v7, "languageId":I
    const/4 v12, 0x0

    .line 214
    .local v12, "turkishKeyboardType":I
    const/4 v13, 0x0

    .line 216
    .local v13, "usedUmlaut":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 217
    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v14

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v11

    .line 218
    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v14

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    .line 219
    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v9

    .line 220
    if-eqz v9, :cond_0

    .line 221
    const-string v14, "INPUT_LANGUAGE"

    const/high16 v15, 0x656e0000

    invoke-interface {v9, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    .line 222
    const-string v14, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    .line 227
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v14, :cond_1

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "sUmlautString":Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .restart local v10    # "sUmlautString":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 234
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 235
    .local v6, "label":Ljava/lang/CharSequence;
    if-eqz v6, :cond_4

    .line 236
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v2, v14, :cond_4

    .line 238
    if-nez v13, :cond_2

    .line 239
    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v13

    .line 237
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v2    # "i":I
    .end local v6    # "label":Ljava/lang/CharSequence;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "sUmlautString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v10    # "sUmlautString":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 241
    .restart local v2    # "i":I
    .restart local v6    # "label":Ljava/lang/CharSequence;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 248
    .end local v2    # "i":I
    .end local v6    # "label":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v13

    .line 251
    :cond_4
    const/4 v5, 0x0

    .line 252
    .local v5, "isTurkishConverting":Z
    const/high16 v14, 0x74720000

    if-ne v7, v14, :cond_5

    .line 253
    if-nez v12, :cond_5

    .line 254
    const/4 v5, 0x1

    .line 258
    :cond_5
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_d

    .line 259
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .restart local v2    # "i":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_3
    if-lt v2, v8, :cond_d

    .line 260
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 261
    .local v3, "index":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_6

    .line 262
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 265
    :cond_6
    if-nez v5, :cond_7

    const/high16 v14, 0x617a0000

    if-ne v7, v14, :cond_a

    :cond_7
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x131

    if-ne v14, v15, :cond_a

    if-nez v11, :cond_8

    if-eqz v1, :cond_a

    .line 267
    :cond_8
    const/4 v14, 0x0

    const/16 v15, 0x130

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 259
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 271
    :cond_a
    const/high16 v14, 0x656c0000

    if-ne v7, v14, :cond_c

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x390

    if-eq v14, v15, :cond_b

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3b0

    if-ne v14, v15, :cond_c

    :cond_b
    if-nez v11, :cond_9

    if-nez v1, :cond_9

    .line 276
    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 281
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v8    # "n":I
    :cond_d
    return-object v10
.end method

.method protected getCurrentUmlautSelectedLanguages()[Lcom/diotek/ime/framework/common/Language;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "currentUmlautSelectedLanguages":[Lcom/diotek/ime/framework/common/Language;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    .line 117
    .local v3, "manager":Lcom/diotek/ime/framework/common/InputManager;
    const/4 v2, 0x0

    .line 118
    .local v2, "languages":[Lcom/diotek/ime/framework/common/Language;
    const/4 v1, 0x0

    .line 119
    .local v1, "isDaMode":Z
    if-eqz v3, :cond_0

    .line 120
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    .line 121
    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isDaMode()Z

    move-result v1

    .line 124
    :cond_0
    if-eqz v1, :cond_2

    .line 125
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 126
    move-object v0, v2

    .line 133
    :goto_0
    return-object v0

    .line 128
    :cond_1
    new-array v0, v5, [Lcom/diotek/ime/framework/common/Language;

    goto :goto_0

    .line 131
    :cond_2
    new-array v0, v5, [Lcom/diotek/ime/framework/common/Language;

    goto :goto_0
.end method

.method public getUmlautString(I)Ljava/lang/String;
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "info":Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getCurrentUmlautSelectedLanguages()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    .line 48
    .local v3, "languages":[Lcom/diotek/ime/framework/common/Language;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    check-cast v2, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    .line 52
    .restart local v2    # "info":Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getUmlautString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 58
    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V

    .line 59
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    check-cast v2, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    .line 61
    .restart local v2    # "info":Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getUmlautString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final initialize()V
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    .line 40
    .local v0, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    const/high16 v4, 0x40a00000

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    .line 41
    new-instance v1, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;-><init>(Z)V

    .line 42
    .local v1, "umlautMapFactory":Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->getUmlautMapSet()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 10
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_4

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "langCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    const/high16 v6, -0x10000

    and-int v2, v5, v6

    .line 85
    .local v2, "langID":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "locale":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 104
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v1    # "langCode":Ljava/lang/String;
    .end local v2    # "langID":I
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "sLocal":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    .line 112
    return-void

    .line 89
    .restart local v1    # "langCode":Ljava/lang/String;
    .restart local v2    # "langID":I
    .restart local v3    # "locale":Ljava/lang/String;
    .restart local v4    # "sLocal":Ljava/lang/String;
    :sswitch_0
    const-string v5, "nl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_1
    const-string v5, "CA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    :cond_3
    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    .end local v1    # "langCode":Ljava/lang/String;
    .end local v2    # "langID":I
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "sLocal":Ljava/lang/String;
    :cond_4
    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x6e6c0000 -> :sswitch_0
    .end sparse-switch
.end method
