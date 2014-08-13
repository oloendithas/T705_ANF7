.class public Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;
.super Lcom/diotek/ime/framework/view/tracker/KeyDetector;
.source "TProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc

.field public static isPrevLandscape:Z

.field private static prevHeight:I

.field private static prevLanguage:I

.field private static prevLayoutType:I

.field private static prevMode:I

.field private static prevWidth:I

.field private static prev_nKeys:I

.field public static upEvent:Z


# instance fields
.field private final DYNAMIC_RECOGNITION_VER:I

.field private final IS_HD:Z

.field private final IS_KORMODE:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private mXt9Version:I

.field private method:I

.field private range:I

.field private tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 90
    sput-boolean v1, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->upEvent:Z

    sput-boolean v1, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 92
    sput v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLanguage:I

    sput v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevMode:I

    sput v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 94
    sput v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevHeight:I

    sput v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    .line 96
    sput v1, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLayoutType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;-><init>()V

    .line 88
    invoke-static {}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->getInstance()Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    move-result-object v3

    iput-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    .line 106
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 108
    iput v5, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mXt9Version:I

    .line 113
    iput v4, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->DYNAMIC_RECOGNITION_VER:I

    .line 121
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v3

    iput v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    .line 122
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v3

    iput v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    .line 123
    iget v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    const/16 v6, 0x500

    if-ne v3, v6, :cond_1

    iget v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    const/16 v6, 0x2d0

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->IS_HD:Z

    .line 125
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->IS_KORMODE:Z

    .line 133
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-boolean v6, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->IS_HD:Z

    iget-boolean v7, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->IS_KORMODE:Z

    invoke-virtual {v3, v6, v7}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->setParameter(ZZ)V

    .line 134
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v3

    iput v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mXt9Version:I

    .line 139
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 141
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const v6, 0x7f090053

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_horizontal_gap:I

    .line 143
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const v6, 0x7f090054

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    .line 147
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v3, "dynamic_recognition_ver"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 151
    iget-object v3, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v3, v3, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v3}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->removeAllDB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "dynamic_recognition_ver"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .end local v1    # "preference":Landroid/content/SharedPreferences;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    move v3, v5

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public dumpCurrentGrid()V
    .locals 8

    .prologue
    .line 394
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    sget v1, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLanguage:I

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevMode:I

    sget v3, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLayoutType:I

    sget-boolean v4, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v5, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v6, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v7, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v0 .. v7}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->dump(IIIZIII)V

    .line 400
    return-void
.end method

.method public getKeyIndexAndNearbyCodes(IIZ)I
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isContinousInput"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 409
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getTouchX(I)I

    move-result v0

    .line 411
    .local v0, "touchX":I
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getTouchY(I)I

    move-result v1

    .line 413
    .local v1, "touchY":I
    const/4 v7, -0x1

    .line 415
    .local v7, "primaryIndex":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v2, :cond_7

    .line 417
    new-array v6, v8, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 419
    .local v6, "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    check-cast v6, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 421
    .restart local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v6, :cond_4

    array-length v2, v6

    if-lez v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->method:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->range:I

    if-nez v2, :cond_1

    .line 432
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    sget-boolean v3, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->upEvent:Z

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->getKeyIndex(IIZ[Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v7

    .line 442
    :cond_0
    if-eq v7, v9, :cond_1

    if-eqz v7, :cond_1

    .line 444
    sput-boolean v8, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->upEvent:Z

    move v2, v7

    .line 548
    .end local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :goto_0
    return v2

    .line 455
    .restart local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    iget-boolean v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->IS_KORMODE:Z

    if-eqz v2, :cond_6

    .line 457
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget v3, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    iget-object v5, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/diotek/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v7

    .line 481
    :goto_1
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_4

    .line 483
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v2

    if-eq v2, v11, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 487
    :cond_2
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 489
    :cond_3
    const/4 v7, -0x1

    .line 514
    .end local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_4
    :goto_2
    sput-boolean v8, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->upEvent:Z

    .line 517
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v2, :cond_8

    .line 519
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v2

    if-eq v2, v11, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v2

    if-ne v2, v10, :cond_8

    :cond_5
    move v2, v7

    .line 523
    goto :goto_0

    .line 473
    .restart local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget v3, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndex(IILcom/diotek/ime/framework/view/Keyboard;IZ)I

    move-result v7

    goto :goto_1

    .line 502
    .end local v6    # "keys":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_7
    const-string v2, "SamsungIME"

    const-string v3, "ProximityKeyDetector.getKeyIndexAndNearbyCodes() mKeyboard == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 531
    :cond_8
    iget v2, p0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mXt9Version:I

    if-eqz v2, :cond_a

    .line 533
    if-ne v9, v7, :cond_9

    move v2, v8

    .line 535
    goto :goto_0

    :cond_9
    move v2, v7

    .line 541
    goto :goto_0

    :cond_a
    move v2, v7

    .line 548
    goto :goto_0
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0xc

    return v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 23
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2, "correctionX"    # F
    .param p3, "correctionY"    # F
    .param p4, "isMiniKeyboard"    # Z

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    invoke-super/range {p0 .. p4}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v3

    iput-object v3, v2, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 192
    if-nez p1, :cond_0

    .line 194
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v19

    .line 202
    .local v19, "repo":Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->range:I

    .line 205
    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v15

    .line 209
    .local v15, "language":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    .line 211
    .local v14, "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->method:I

    .line 214
    const/16 v16, 0x0

    .line 216
    .local v16, "layoutType":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    .line 218
    .local v21, "sLocal":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->method:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 223
    const/high16 v2, 0x74720000

    if-ne v15, v2, :cond_2

    .line 225
    const-string v2, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v16

    .line 267
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v10

    .line 271
    .local v10, "currentOrientation":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->method:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->range:I

    if-nez v2, :cond_a

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v13

    .line 307
    .local v13, "info":Landroid/view/inputmethod/EditorInfo;
    if-nez v13, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    invoke-virtual {v2}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->resetGrid()V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v2, v2, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 380
    .end local v13    # "info":Landroid/view/inputmethod/EditorInfo;
    :goto_1
    return-object v2

    .line 227
    .end local v10    # "currentOrientation":Z
    :cond_2
    const-string v2, "nl"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    const/high16 v2, 0x6e6c0000

    if-ne v15, v2, :cond_1

    .line 231
    const/16 v16, 0x1

    goto :goto_0

    .line 237
    :cond_3
    const-string v2, "CA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    const/high16 v2, 0x66720000

    if-ne v15, v2, :cond_1

    .line 241
    const/16 v16, 0x1

    goto :goto_0

    .line 249
    :cond_4
    const-string v2, "CH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const/high16 v2, 0x69740000

    if-ne v15, v2, :cond_5

    .line 253
    const/16 v16, 0x1

    goto :goto_0

    .line 255
    :cond_5
    const/high16 v2, 0x66720000

    if-ne v15, v2, :cond_1

    .line 257
    const/16 v16, 0x2

    goto :goto_0

    .line 315
    .restart local v10    # "currentOrientation":Z
    .restart local v13    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_6
    iget v2, v13, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    move/from16 v18, v0

    .line 317
    .local v18, "mode":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v22

    .line 321
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v12

    .line 323
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v11, v2

    .line 327
    .local v11, "nKeys":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v2, :cond_a

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLanguage:I

    if-ne v2, v15, :cond_9

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevMode:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLayoutType:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    sget-boolean v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    if-ne v2, v10, :cond_9

    if-lez v22, :cond_7

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevWidth:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_9

    :cond_7
    if-lez v12, :cond_8

    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevHeight:I

    if-ne v2, v12, :cond_9

    :cond_8
    sget v2, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    if-eq v11, v2, :cond_a

    .line 340
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 342
    .local v20, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const v3, 0x7f090053

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_horizontal_gap:I

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const v3, 0x7f090054

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    sget v3, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLanguage:I

    sget v4, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevMode:I

    sget v5, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLayoutType:I

    sget-boolean v6, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v7, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v8, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v9, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v2 .. v9}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->dump(IIIZIII)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    :goto_2
    move-object/from16 v3, p1

    move v5, v15

    move/from16 v6, v18

    move/from16 v7, v16

    move/from16 v8, v22

    move v9, v12

    invoke-virtual/range {v2 .. v11}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->gridInitStart(Lcom/diotek/ime/framework/view/DefaultKeyboard;IIIIIIZI)V

    .line 358
    sput v15, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLanguage:I

    .line 360
    sput v18, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevMode:I

    .line 362
    sput v16, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevLayoutType:I

    .line 364
    sput-boolean v10, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 368
    sput v22, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 370
    sput v12, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prevHeight:I

    .line 374
    sput v11, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    .line 380
    .end local v11    # "nKeys":I
    .end local v12    # "height":I
    .end local v13    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v18    # "mode":I
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v22    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->tmm:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v2, v2, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    goto/16 :goto_1

    .line 350
    .restart local v11    # "nKeys":I
    .restart local v12    # "height":I
    .restart local v13    # "info":Landroid/view/inputmethod/EditorInfo;
    .restart local v18    # "mode":I
    .restart local v20    # "res":Landroid/content/res/Resources;
    .restart local v22    # "width":I
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    goto :goto_2
.end method
